import 'package:e_commerce/Presentation/Features/Cart/Page/cart_page.dart';
import 'package:e_commerce/Presentation/Features/ProductDetails/Page/product_details_page.dart';
import 'package:e_commerce/Presentation/Features/Profile/Page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Presentation/Features/Home/Page/home_page.dart';
import '../../Presentation/Features/Login/Page/login_page.dart';
import '../../Presentation/Features/ScaffoldWithBottomNavbar/Page/scaffold_with_navbar_page.dart';
import '../../Presentation/Features/Signup/Page/signup_page.dart';
import '../../Presentation/Features/Splash/Page/splash_page.dart';

part 'route_data.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: Routes.splash.path,
  navigatorKey: _navigatorKey,
  redirect: (ctx, state) {
    ///TODO(SHIHAB) ADD REDIRECT WHEN IT IS NEEDED (eg: deep linking)
    return null;
  },
  routes: [
    GoRoute(
      name: Routes.splash.name,
      path: Routes.splash.path,
      pageBuilder: Routes.splash.pageBuilder,
      routes: [
        GoRoute(
          name: Routes.login.name,
          path: Routes.login.path,
          pageBuilder: Routes.login.pageBuilder,
          routes: [
            GoRoute(
              name: Routes.signup.name,
              path: Routes.signup.path,
              pageBuilder: Routes.signup.pageBuilder,
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) =>
          ScaffoldWIthBottomNavBar(shell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.home.name,
              path: Routes.home.path,
              pageBuilder: Routes.home.pageBuilder,
              routes: [
                GoRoute(
                  name: Routes.productDetails.name,
                  path: Routes.productDetails.path,
                  pageBuilder: Routes.productDetails.pageBuilder,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.cart.name,
              path: Routes.cart.path,
              pageBuilder: Routes.cart.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.profile.name,
              path: Routes.profile.path,
              pageBuilder: Routes.profile.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
