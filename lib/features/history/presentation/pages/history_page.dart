import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/history/presentation/widgets/chat_history_clear_all_button.dart';
import 'package:fin_dall/features/history/presentation/widgets/chat_history_list.dart';
import 'package:fin_dall/features/history/presentation/widgets/history_section.dart';
import 'package:fin_dall/features/history/presentation/widgets/search_history_clear_all_button.dart';
import 'package:fin_dall/features/history/presentation/widgets/search_history_list.dart';
import 'package:flutter/material.dart';

/// The main History page that adapts to different screen sizes.
///
/// This widget uses a responsive framework to display different layouts
/// based on the screen size: compact, medium, or expanded.
///
/// Example usage:
/// ```dart
/// HistoryPage();
/// ```
@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use a custom extension method to get the appropriate widget based on screen size
    // This allows for a clean, declarative way to handle responsive layouts
    return context.getResponsiveWidget(
      compact: const HistoryCompactPage(),
      medium: const HistoryMediumPage(),
      defaultWidget: const HistoryExpandedPage(),
    );
  }
}

/// Compact layout for the History page, typically used on small screens.
///
/// This layout uses a full-screen approach with an AppBar and TabBar
/// for navigation between search and chat history.
class HistoryCompactPage extends StatelessWidget {
  const HistoryCompactPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use DefaultTabController to manage tab state
    return DefaultTabController(
      length: 2, // Two tabs: one for searches, one for messages
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.loc.history), // Localized title
          centerTitle: false,
          bottom: TabBar(
            isScrollable: false, // Tabs take up full width
            tabAlignment: TabAlignment.fill,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                icon: const Icon(Icons.history),
                child: Text(context.loc.searches), // Localized tab label
              ),
              Tab(
                icon: const Icon(Icons.chat),
                child: Text(context.loc.messages), // Localized tab label
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              // Search history tab content
              HistorySection(
                historyList: SearchHistoryList(),
                clearAllButton: SearchHistoryClearAllButton(),
              ),
              // Chat history tab content
              HistorySection(
                historyList: ChatHistoryList(),
                clearAllButton: ChatHistoryClearAllButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Medium layout for the History page, typically used on tablets or larger phones.
///
/// This layout uses a card-based approach with a custom back button and
/// embedded TabBar for a more refined look on larger screens.
class HistoryMediumPage extends StatelessWidget {
  const HistoryMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: DetailScaffold(
        title: context.loc.history,
        onBackPressed: () => context.router.maybePop(),
        body: Column(
          children: [
            // TabBar for switching between searches and messages
            TabBar(
              isScrollable: false,
              tabAlignment: TabAlignment.fill,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: const Icon(Icons.history),
                  child: Text(context.loc.searches),
                ),
                Tab(
                  icon: const Icon(Icons.chat),
                  child: Text(context.loc.messages),
                ),
              ],
            ),
            // TabBarView containing the history sections
            const Expanded(
              child: TabBarView(
                children: [
                  HistorySection(
                    historyList: SearchHistoryList(),
                    clearAllButton: SearchHistoryClearAllButton(),
                  ),
                  HistorySection(
                    historyList: ChatHistoryList(),
                    clearAllButton: ChatHistoryClearAllButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Expanded layout for the History page, typically used on large tablets or desktops.
/// Currently, this uses the same layout as the medium layout.
///
/// In the future, this could be customized for even larger screens if needed.
class HistoryExpandedPage extends StatelessWidget {
  const HistoryExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Reuse the medium layout for expanded view
    // This is a design decision to maintain consistency across larger screens
    return const HistoryMediumPage();
  }
}
