import 'package:e_commerce_assignment/Presentation/Features/Home/View/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Bloc/Product/product_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).colorScheme.onSecondary,
              child: const Icon(Icons.menu_sharp),
            ),
            Column(
              children: [
                Text(
                  'Store Location',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(width: 5),
                    const Text('Mondolibug, Sylhet'),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).colorScheme.onSecondary,
              child: const Icon(Icons.shopping_bag),
            ),
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => ProductBloc(),
        child: const HomeView(),
      ),
    );
  }
}
