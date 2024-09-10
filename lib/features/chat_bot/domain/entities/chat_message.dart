// domain/entities/chat_message.dart
import 'package:flutter/material.dart';

abstract class ChatMessage {
  Widget toWidget();
  bool get isSentByUser;
}
