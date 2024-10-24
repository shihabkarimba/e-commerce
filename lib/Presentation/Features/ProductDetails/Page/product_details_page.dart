import 'package:e_commerce/Bloc/Product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../View/product_details_view.dart';

class ProductDetailsPage extends StatefulWidget {
  final int productId;

  const ProductDetailsPage({
    super.key,
    required this.productId,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Men's Shoes"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return switch (state) {
            ProductLoadedState(productList: final productList) =>
              ProductDetailsView(
                product:
                    productList.firstWhere((e) => e.id == widget.productId),
              ),
            ProductLoadingState() =>
              const Center(child: CircularProgressIndicator()),
            ProductInitialState() || ProductErrorState() => Center(
                  child: Text(
                'There was an error',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          };
        },
      ),
    );
  }
}
