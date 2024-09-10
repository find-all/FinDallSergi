import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/paging_list/paging_controller.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/history/domain/entities/chat_history_entry.dart';
import 'package:fin_dall/features/history/presentation/controllers/chat_history_fetch_provider.dart';
import 'package:fin_dall/features/history/presentation/controllers/remove_chat_history_entry_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The radius of the circular avatar in the chat history list tile.
const double _chatHistoryImageRadius = 20;

/// A list tile widget that displays a single chat history entry.
///
/// This widget shows the chat message, a history icon, and a delete button.
/// It also handles the deletion of the chat history entry using Riverpod.
class ChatHistoryListTile extends StatelessWidget {
  /// The chat history entry to display.
  final ChatHistoryEntry entry;

  /// Creates a [ChatHistoryListTile].
  ///
  /// The [entry] parameter is required and contains the chat history data to display.
  const ChatHistoryListTile({
    super.key,
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Leading widget: Circular avatar with history icon
      leading: CircleAvatar(
        backgroundColor: context.getResponsiveValue(
          compact: context.colorScheme.primaryContainer,
          defaultValue: context.colorScheme.surface,
        ),
        radius: _chatHistoryImageRadius,
        child: Center(
          child: Icon(
            Icons.history,
            color: context.colorScheme.primary,
          ),
        ),
      ),
      // Title: Display the chat message
      title: Text(
        entry.message,
        style: context.theme.listTileTheme.titleTextStyle?.copyWith(
          color: context.getResponsiveValue<Color?>(
            compact: context.theme.colorScheme.onSurface,
            defaultValue: context.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      // Trailing widget: Delete button with Riverpod consumer
      trailing: Consumer(
        builder: (context, ref, child) {
          // Listen for changes in the remove chat history entry state
          ref.listen<ControllerState<ChatHistoryEntry>>(
              removeChatHistoryEntryControllerProvider(id: entry.id),
              (previous, next) {
            switch (next) {
              case ControllerStateInitial<ChatHistoryEntry>():
              case ControllerStateLoading<ChatHistoryEntry>():
                return; // Do nothing for these states
              case ControllerStateData<ChatHistoryEntry>():
                // On successful deletion, remove the item from the paging controller
                final fetch = ref.watch(chatHistoryFetchProvider);
                ref
                    .read(
                      pagingControllerProvider(
                              fetch: fetch, pageSize: 25, initialPage: 1)
                          .notifier,
                    )
                    .removeItem(predicate: (item) => item.id == entry.id);
                return;
              case ControllerStateError<ChatHistoryEntry>(error: final failure):
                // Show error message if deletion fails
                context.showErrorSnackBar(
                  content: failure.getUIMessage(context: context),
                );
                return;
            }
          });

          // Return the delete button
          return IconButton(
            icon: Icon(
              Icons.delete_forever,
              color: context.colorScheme.error.withOpacity(0.7),
            ),
            onPressed: () {
              // Trigger the removal of the chat history entry
              ref
                  .read(removeChatHistoryEntryControllerProvider(id: entry.id)
                      .notifier)
                  .removeHistoryEntry();
            },
          );
        },
      ),
    );
  }
}

/// A loading placeholder for [ChatHistoryListTile].
///
/// This widget displays a shimmer effect to indicate that the chat history
/// entry is being loaded.
class ChatHistoryListTileLoading extends StatelessWidget {
  /// Creates a [ChatHistoryListTileLoading] widget.
  const ChatHistoryListTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      // Leading widget: Circular shimmer effect
      leading: ShimmerCircle(
        radius: _chatHistoryImageRadius,
      ),
      // Title: Rectangular shimmer effect
      title: ShimmerBox(
        width: 100,
        height: 20,
        radius: 10,
      ),
    );
  }
}
