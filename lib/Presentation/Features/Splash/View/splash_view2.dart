import 'package:e_commerce_assignment/Presentation/Features/Splash/Widget/ellipse_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class SplashView2 extends StatefulWidget {
  const SplashView2({super.key});

  @override
  State<SplashView2> createState() => _SplashView2State();
}

class _SplashView2State extends State<SplashView2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.img.shoe.image(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EllipseWidget(),
            EllipseWidget(),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Follow Latest Style Shoes',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          'There Are Many Beautiful And Attractive Plants To Your Room',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ],
    );
  }
}
