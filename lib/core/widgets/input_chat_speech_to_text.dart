import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:avatar_glow/avatar_glow.dart';

class TextInputWithVoice extends StatefulWidget {
  final bool isLoading;
  final void Function(String) onSend;
  final VoidCallback? onTap; // Nuevo parámetro opcional

  const TextInputWithVoice({
    super.key,
    required this.isLoading,
    required this.onSend,
    this.onTap, // Inicializa el parámetro opcional
  });

  @override
  State<TextInputWithVoice> createState() => _TextInputWithVoiceState();
}

class _TextInputWithVoiceState extends State<TextInputWithVoice> {
  late TextEditingController _controller;
  late bool _showMic;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _showMic = true;
    _isLoading = widget.isLoading;
  }

  @override
  void didChangeDependencies() {
    _isLoading = widget.isLoading;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_isLoading) const LinearProgressIndicator(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding solo vertical
          child: Material(
            elevation: 2,
            color: Colors.blue[100], // Fondo azul claro similar al de la imagen
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              child: TextField(
                controller: _controller,
                enabled: !_isLoading,
                onChanged: (value) {
                  setState(() {
                    _showMic = value.isEmpty;
                  });
                },
                onTap: widget.onTap ?? () {}, // Ejecuta la función onTap si está definida
                decoration: InputDecoration(
                  hintText: 'Escribe un mensaje...',
                  border: InputBorder.none,
                  filled: false,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  fillColor: Theme.of(context).colorScheme.surface,
                  suffixIcon: IconButton(
                    onPressed: _isLoading
                        ? null
                        : _showMic
                            ? () async {
                                final result = await showModalBottomSheet<String?>(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return const VoiceToTextInput();
                                  },
                                );

                                if (result != null && result.isNotEmpty) {
                                  _controller.text = result;
                                  setState(() {
                                    _showMic = false;
                                  });
                                }
                              }
                            : () {
                                widget.onSend(_controller.text);
                                _controller.clear();
                                setState(() {
                                  _showMic = true;
                                });
                              },
                    icon: Icon(
                      _showMic ? Icons.mic : Icons.send,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class VoiceToTextInput extends StatefulWidget {
  const VoiceToTextInput({super.key});

  @override
  VoiceToTextInputState createState() => VoiceToTextInputState();
}

class VoiceToTextInputState extends State<VoiceToTextInput> {
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  Future<void> _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    if (_speechEnabled) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _startListening();
      });
      setState(() {});
    }
  }

  Future<void> _startListening() async {
    var status = await Permission.microphone.status;
    if (status.isDenied) {
      status = await Permission.microphone.request();
    }

    if (status.isGranted) {
      await _speechToText.listen(
        onResult: _onSpeechResult,
        listenOptions: SpeechListenOptions(partialResults: true),
      );
      setState(() {});
    } else {
      _showPermissionDenied();
    }
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  void _showPermissionDenied() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Permission Denied'),
        content: const Text('Microphone permission is needed to use this feature.'),
        actions: [
          TextButton(
            onPressed: () {
              openAppSettings();
            },
            child: const Text('Open Settings'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _speechToText.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: _speechEnabled ? _buildSpeechWidget() : _buildNoServiceWidget(),
      ),
    );
  }

  Widget _buildNoServiceWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Microphone permission denied',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            openAppSettings();
          },
          child: const Text('Open Settings'),
        ),
      ],
    );
  }

  Widget _buildSpeechWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_lastWords.isNotEmpty) ...[
          Text(
            _lastWords,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
        ],
        Center(
          child: _speechToText.isNotListening
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.mic),
                      onPressed: () {
                        setState(() {
                          _lastWords = '';
                        });
                        _startListening();
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.check),
                      onPressed: () {
                        Navigator.pop(context, _lastWords);
                      },
                    ),
                  ],
                )
              : AvatarGlow(
                  glowColor: Colors.blue,
                  endRadius: 50.0,
                  child: IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: _stopListening,
                  ),
                ),
        ),
      ],
    );
  }
}
