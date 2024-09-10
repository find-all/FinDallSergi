import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/features/account/presentation/pages/account_page.dart';
import 'package:fin_dall/features/account/presentation/pages/account_selector_page.dart';
import 'package:fin_dall/features/authentication/presentation/auth/pages/auth_page.dart';
import 'package:fin_dall/features/authentication/presentation/auth/pages/splash_page.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/pages/forget_password_page.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/pages/reset_password_page.dart';
import 'package:fin_dall/features/authentication/presentation/sign_in/pages/sign_in_page.dart';
import 'package:fin_dall/features/authentication/presentation/sign_up/pages/sign_up_page.dart';
import 'package:fin_dall/features/authentication/presentation/verify_account/pages/verify_account_page.dart';
import 'package:fin_dall/features/business/presentation/pages/business_page.dart';
import 'package:fin_dall/features/carousel_bot/presentation/pages/carousel_page.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat/pages/chat_page.dart';
import 'package:fin_dall/features/favorite/presentation/pages/favorites_page.dart';
import 'package:fin_dall/features/history/presentation/pages/history_page.dart';
import 'package:fin_dall/features/home/presentation/pages/home_page.dart';
import 'package:fin_dall/features/map_bot/presentation/pages/map_page.dart';
import 'package:fin_dall/features/product/presentation/widgets/product_page.dart';
import 'package:fin_dall/features/profile/presentation/profile/pages/profile_page.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/pages/my_review_detail_page.dart';
import 'package:fin_dall/features/reviews/presentation/pages/my_reviews_page.dart';
import 'package:fin_dall/features/services/presentation/pages/service_page.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          keepHistory: false,
          initial: true,
        ),
        AutoRoute(
          path: '/auth',
          page: AuthRoute.page,
          maintainState: true,
          keepHistory: false,
          children: [
            CustomRoute(
              initial: true,
              path: 'sign-in',
              page: SignInRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'sign-up',
              page: SignUpRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'forget-password',
              page: ForgetPasswordRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'reset-password',
              page: ResetPasswordRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'verify-account',
              page: VerifyAccountRoute.page,
              transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
            ),
          ],
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          maintainState: true,
          children: [
            CustomRoute(
              path: 'chat',
              maintainState: true,
              initial: true,
              page: ChatRoute.page,
              transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
            ),
            CustomRoute(
              path: 'map',
              maintainState: true,
              page: MapRoute.page,
              transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
            ),
            CustomRoute(
              path: 'carousel',
              maintainState: true,
              page: CarouselRoute.page,
              transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
            ),
            CustomRoute(
              path: 'account',
              page: AccountRoute.page,
              maintainState: true,
              transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
              children: [
                AutoRoute(
                  path: 'account-selector',
                  page: AccountSelectorRoute.page,
                  maintainState: true,
                  initial: true,
                ),
                AutoRoute(
                  path: 'profile',
                  page: ProfileRoute.page,
                  maintainState: true,
                ),
                AutoRoute(
                  path: 'my-reviews',
                  page: MyReviewsRoute.page,
                  maintainState: true,
                ),
                AutoRoute(
                  path: 'my_review_detail',
                  page: MyReviewDetailRoute.page,
                  keepHistory: false,
                ),
                AutoRoute(
                  path: 'history',
                  page: HistoryRoute.page,
                  maintainState: true,
                ),
                AutoRoute(
                  path: 'favorites',
                  page: FavoritesRoute.page,
                  maintainState: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'business',
              page: BusinessRoute.page,
              maintainState: true,
            ),
            AutoRoute(
              path: 'product',
              page: ProductRoute.page,
              maintainState: true,
            ),
            AutoRoute(
              path: 'service',
              page: ServiceRoute.page,
              maintainState: true,
            ),
          ],
        ),
      ];
}

@riverpod
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}
