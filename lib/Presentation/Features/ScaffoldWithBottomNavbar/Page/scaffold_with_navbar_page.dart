import 'package:e_commerce_assignment/Bloc/UserProfile/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWIthBottomNavBar extends StatefulWidget {
  final StatefulNavigationShell shell;

  const ScaffoldWIthBottomNavBar({super.key, required this.shell});

  @override
  State<ScaffoldWIthBottomNavBar> createState() =>
      _ScaffoldWIthBottomNavBarState();
}

class _ScaffoldWIthBottomNavBarState extends State<ScaffoldWIthBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserProfileBloc>(
          create: (BuildContext context) => UserProfileBloc(),
        ),
      ],
      child: Scaffold(
        body: widget.shell,
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: widget.shell.goBranch,
          selectedIndex: widget.shell.currentIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_work_rounded,
                color: Colors.white54,
              ),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white54,
              ),
              label: 'cart',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Colors.white54,
              ),
              label: 'settings',
            ),
          ],
        ),
      ),
    );
  }
}
