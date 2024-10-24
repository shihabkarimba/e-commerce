import 'package:e_commerce/Models/ProductModel/product_model.dart';
import 'package:e_commerce/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatefulWidget {
  final ProductModel product;
  const ProductDetailsView({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Assets.img.shoe.image(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.tag ?? '',
                            style: theme.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w200,
                              color: theme.colorScheme.secondary,
                            ),
                          ),
                          Text(
                            widget.product.name ?? '',
                            style: theme.textTheme.headlineMedium,
                          ),
                          Text(
                            '${widget.product.symbol}${widget.product.price}',
                            style: theme.textTheme.displaySmall,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            widget.product.description ?? '',
                            style: theme.textTheme.labelMedium!.copyWith(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Gallery',
                            style: theme.textTheme.displaySmall,
                          ),
                          const SizedBox(height: 10),
                          if (widget.product.gallery != null)
                            SizedBox(
                              height: 60,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: widget.product.gallery?.length,
                                itemBuilder: (context, index) {
                                  final item = widget.product.gallery?[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.secondary
                                            .withOpacity(.2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.asset(item ?? ''),
                                    ),
                                  );
                                },
                              ),
                            ),
                          const SizedBox(height: 20),
                          Text(
                            'Size',
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(
                            height: 60,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.product.availableSizes?.length,
                              itemBuilder: (context, index) {
                                final size =
                                    widget.product.availableSizes?[index];
                                return CircleAvatar(
                                  backgroundColor: theme.colorScheme.secondary
                                      .withOpacity(.2),
                                  radius: 40,
                                  child: Text(size.toString()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: theme.textTheme.labelMedium!.copyWith(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            '${widget.product.symbol}${widget.product.price}',
                            style: theme.textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add to Cart'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
