import 'package:flutter/material.dart';

class EllipseWidget extends StatelessWidget {
  const EllipseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 7,
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
