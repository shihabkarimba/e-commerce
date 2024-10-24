part of 'route.dart';

class RouteInfo {
  final String name;
  final String path;
  final GoRouterPageBuilder? pageBuilder;

  const RouteInfo({
    required this.name,
    required this.path,
    required this.pageBuilder,
  });

  const RouteInfo.shell({
    required this.name,
    required this.path,
    required this.pageBuilder,
  });
}

class QueryParams {
  static String id = 'id';
}

class Routes {
  static final splash = RouteInfo(
    name: 'splash',
    path: '/splash',
    pageBuilder: (context, state) {
      return const MaterialPage(child: SplashPage());
    },
  );

  static final login = RouteInfo(
    name: 'login',
    path: '/login',
    pageBuilder: (context, state) {
      return const MaterialPage(child: LoginPage());
    },
  );

  static final signup = RouteInfo(
    name: 'signup',
    path: 'signup',
    pageBuilder: (context, state) {
      return const MaterialPage(child: SignupPage());
    },
  );

  static final home = RouteInfo(
    name: 'home',
    path: '/home',
    pageBuilder: (context, state) {
      return const MaterialPage(child: HomePage());
    },
  );

  static final cart = RouteInfo(
    name: 'cart',
    path: '/cart',
    pageBuilder: (context, state) {
      return const MaterialPage(child: CartPage());
    },
  );

  static final productDetails = RouteInfo(
    name: 'productDetails',
    path: 'productDetails',
    pageBuilder: (context, state) {
      final id =
          int.tryParse(state.uri.queryParameters[QueryParams.id] ?? '0') ?? 0;
      return MaterialPage(child: ProductDetailsPage(productId: id));
    },
  );

  static final profile = RouteInfo(
    name: 'profile',
    path: '/profile',
    pageBuilder: (context, state) {
      return const MaterialPage(child: ProfilePage());
    },
  );
}
