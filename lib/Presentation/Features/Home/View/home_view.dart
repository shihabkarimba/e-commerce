import 'package:e_commerce/Bloc/Product/product_bloc.dart';
import 'package:e_commerce/Core/Constants/Usages/product_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widget/showcase_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    context.read<ProductBloc>().add(const OnGetProductEvent());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
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
            const SizedBox(height: 20),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return switch (state) {
                  ProductLoadedState(productList: final productList) => TabBar(
                      controller: _tabController,
                      tabs: productList.map((e) => Text('${e.name}')).toList()),
                  ProductLoadingState() =>
                    const Center(child: CircularProgressIndicator()),
                  ProductInitialState() ||
                  ProductErrorState() =>
                    const SizedBox.shrink()
                };
              },
            ),
            SizedBox(
              height: 300,
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return switch (state) {
                    ProductLoadedState(productList: final productList) =>
                      TabBarView(
                          controller: _tabController,
                          children: productList
                              .map(
                                (e) => Column(
                                  children: [
                                    const SizedBox(height: 30),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Popular Shoes',
                                          style: theme.textTheme.displayMedium,
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'See all',
                                            style: theme.textTheme.labelMedium!
                                                .copyWith(
                                              color:
                                                  theme.colorScheme.secondary,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ShowCaseWidget(
                                            item: e,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Expanded(
                                          child: ShowCaseWidget(
                                            item: e,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                              .toList()),
                    ProductInitialState() ||
                    ProductLoadingState() ||
                    ProductErrorState() =>
                      const SizedBox.shrink()
                  };
                },
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrival',
                      style: theme.textTheme.displayMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: theme.textTheme.labelMedium!.copyWith(
                          color: theme.colorScheme.secondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ProductStaticData.data[0].tag ?? '',
                              style: theme.textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.w200,
                                color: theme.colorScheme.secondary,
                              ),
                            ),
                            Text(
                              '${ProductStaticData.data[0].name}',
                              style: theme.textTheme.displayLarge,
                            ),
                            Text(
                              '${ProductStaticData.data[0].symbol}${ProductStaticData.data[0].price}',
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        Image.asset(ProductStaticData.data[0].image ?? ''),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
