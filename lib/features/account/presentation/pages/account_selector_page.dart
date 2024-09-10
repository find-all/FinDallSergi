import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/account/presentation/widgets/account_grid.dart';
import 'package:fin_dall/features/account/presentation/widgets/account_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
// TODO animar los cards
class AccountSelectorPage extends StatelessWidget {
  const AccountSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final accountOptions = [
      const AccountTile.profile(),
      const AccountTile.favorites(),
      const AccountTile.reviews(),
      const AccountTile.history(),
    ];
    return context.getResponsiveWidget(
      compact: AccountSelectorCompactPage(
        accountOptions: accountOptions,
      ),
      medium: AccountSelectorMediumPage(
        accountOptions: accountOptions,
      ),
      defaultWidget: AccountSelectorExpandedPage(
        accountOptions: accountOptions,
      ),
    );
  }
}

class AccountSelectorCompactPage extends StatelessWidget {
  final List<Widget> accountOptions;

  const AccountSelectorCompactPage({
    super.key,
    required this.accountOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: accountOptions.length,
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            thickness: 0.8,
            indent: 50,
          ),
          itemBuilder: (BuildContext context, int index) {
            return accountOptions[index];
          },
        ),
      ),
    );
  }
}

class AccountSelectorMediumPage extends StatelessWidget {
  final List<Widget> accountOptions;
  const AccountSelectorMediumPage({
    super.key,
    required this.accountOptions,
  });

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      body: AccountGrid(
        accountOptions: accountOptions,
      ),
    );
  }
}

class AccountSelectorExpandedPage extends StatelessWidget {
  final List<Widget> accountOptions;
  const AccountSelectorExpandedPage({
    super.key,
    required this.accountOptions,
  });

  @override
  Widget build(BuildContext context) {
    return AccountSelectorMediumPage(
      accountOptions: accountOptions,
    );
  }
}
