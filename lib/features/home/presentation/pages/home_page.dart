import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/home/presentation/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavigation = 0;

  void changePage(int index) {
    if (index == selectedNavigation) {
      return;
    }

    setState(() {
      selectedNavigation = index;
    });
    switch (index) {
      case 0:
        context.router.push(const ChatRoute());
        break;
      case 1:
        context.router.push(const MapRoute());
        break;
      case 2:
        context.router.push(const CarouselRoute());
        break;
      case 3:
        context.router.push(const AccountRoute());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.getResponsiveValue(
          compact: context.colorScheme.surface,
          defaultValue: context.colorScheme.primaryContainer),
      body: SafeArea(
        child: context.getResponsiveWidget(
            compact: Column(
              children: [
                const Expanded(child: AutoRouter()),
                CustomCompactNavBar(
                  selectedIndex: selectedNavigation,
                  onSelected: changePage,
                ),
              ],
            ),
            medium: Row(
              children: [
                SizedBox(
                  width: context.width * 0.1,
                  height: context.height,
                  child: CustomMediumNavBar(
                    selectedIndex: selectedNavigation,
                    onSelected: changePage,
                  ),
                ),
                const Expanded(child: AutoRouter()),
              ],
            ),
            defaultWidget: Row(
              children: [
                SizedBox(
                  width: context.width * 0.2,
                  height: context.height,
                  child: CustomExtendedNavBar(
                    selectedIndex: selectedNavigation,
                    onSelected: changePage,
                  ),
                ),
                const Expanded(child: AutoRouter()),
              ],
            )),
      ),
    );
  }
}
