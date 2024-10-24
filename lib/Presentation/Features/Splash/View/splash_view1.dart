import 'package:e_commerce/Presentation/Features/Splash/Widget/ellipse_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class SplashView1 extends StatefulWidget {
  const SplashView1({super.key});

  @override
  State<SplashView1> createState() => _SplashView1State();
}

class _SplashView1State extends State<SplashView1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Assets.img.shoe.image(),
        const SizedBox(height: 20),
        const EllipseWidget(),
        const Align(
          alignment: Alignment.centerRight,
          child: EllipseWidget(),
        ),
        const SizedBox(height: 20),
        Text(
          'Start Journey With Shoes',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          'Smart, Gorgeous & Fashionable Collection',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ],
    );
  }
}
