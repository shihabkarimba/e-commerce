import 'package:e_commerce_assignment/Core/Router/route.dart';
import 'package:e_commerce_assignment/Domain/Repository/LocalAuthRepo/local_auth_repo.dart';
import 'package:e_commerce_assignment/Presentation/Features/Splash/View/splash_view1.dart';
import 'package:e_commerce_assignment/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../View/splash_view2.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int selectedIndex = 0;
  final pageController = PageController();
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    redirect();
  }

  redirect() {
    final isLoggedIn = GetIt.I<LocalAuthRepository>().checkUser();
    if (isLoggedIn) {
      router.goNamed(Routes.home.name);
    } else {
      isLoading = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Scaffold(body: Center(child: CircularProgressIndicator()))
        : Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Assets.img.splashEllipse.image(),
                ),
                Positioned.fill(
                  child: Column(
                    children: [
                      const Spacer(),
                      SizedBox(
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: PageView(
                            controller: pageController,
                            onPageChanged: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            children: const [
                              SplashView1(),
                              SplashView2(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 10,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            final isSelectedIndex = index == selectedIndex;
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: isSelectedIndex ? 50 : 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isSelectedIndex
                                    ? Theme.of(context).colorScheme.secondary
                                    : Colors.white,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    selectedIndex == 0
                        ? ElevatedButton(
                            onPressed: () {
                              pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInSine);
                            },
                            child: const Text(
                              'Get Started',
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              router.goNamed(Routes.login.name);
                            },
                            child: const Text(
                              'Next',
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
  }
}
