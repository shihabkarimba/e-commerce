import 'package:e_commerce_assignment/Bloc/Product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const OnGetProductEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Looking for shoes',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white38,
                ),
              ),
            ),
            const SizedBox(height: 10),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return switch (state) {
                  ProductLoadedState(productList: final productList) => TabBar(
                      tabs: productList.map((e) => Text('${e.name}')).toList()),
                  ProductInitialState() ||
                  ProductLoadingState() ||
                  ProductErrorState() =>
                    const Expanded(child: SizedBox.shrink())
                };
              },
            ),
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return switch (state) {
                    ProductLoadedState(productList: final productList) =>
                      TabBarView(
                          children: productList
                              .map((e) => Text('${e.description}'))
                              .toList()),
                    ProductInitialState() ||
                    ProductLoadingState() ||
                    ProductErrorState() =>
                      const Expanded(child: SizedBox.shrink())
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
