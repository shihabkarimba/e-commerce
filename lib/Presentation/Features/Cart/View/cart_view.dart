import 'package:e_commerce/Bloc/CartData/cart_data_bloc.dart';
import 'package:e_commerce/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CartDataBloc, CartDataState>(
      builder: (context, state) {
        final items = state.productList;
        return items.isEmpty
            ? Center(
                child: Text(
                'Your cart is empty',
                style: theme.textTheme.titleMedium,
              ))
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];

                        return SizedBox(
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10)
                                .copyWith(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 85,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onSecondary,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Assets.img.shoe.image(),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.product?.name ?? '',
                                              style: theme.textTheme.titleSmall,
                                            ),
                                            Text(
                                              '${item.product?.symbol}${item.product?.price}',
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IgnorePointer(
                                              ignoring:
                                                  (item.quantity ?? 0) <= 1,
                                              child: SizedBox(
                                                height: 30,
                                                width: 30,
                                                child: IconButton(
                                                  style: ButtonStyle(
                                                      padding:
                                                          const WidgetStatePropertyAll(
                                                              EdgeInsets.zero),
                                                      backgroundColor:
                                                          WidgetStatePropertyAll(
                                                        theme.colorScheme
                                                            .onSecondary,
                                                      ),
                                                      foregroundColor:
                                                          const WidgetStatePropertyAll(
                                                        Colors.white,
                                                      )),
                                                  onPressed: () {
                                                    context
                                                        .read<CartDataBloc>()
                                                        .add(
                                                            OnDecrementQuantityEvent(
                                                                id: item.product
                                                                        ?.id ??
                                                                    0));
                                                  },
                                                  icon: const Icon(
                                                    Icons.remove,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              item.quantity.toString(),
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            const SizedBox(width: 10),
                                            SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: IconButton(
                                                style: ButtonStyle(
                                                    padding:
                                                        const WidgetStatePropertyAll(
                                                            EdgeInsets.zero),
                                                    backgroundColor:
                                                        WidgetStatePropertyAll(
                                                      theme.colorScheme
                                                          .onSecondary,
                                                    ),
                                                    foregroundColor:
                                                        const WidgetStatePropertyAll(
                                                      Colors.white,
                                                    )),
                                                onPressed: () {
                                                  context.read<CartDataBloc>().add(
                                                      OnIncrementQuantityEvent(
                                                          id: item.product
                                                                  ?.id ??
                                                              0));
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: theme
                                          .colorScheme.secondary
                                          .withOpacity(.3),
                                      child: Text(
                                        item.selectedSize.toString(),
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.read<CartDataBloc>().add(
                                            OnRemoveItemFromCartEvent(
                                                id: item.product?.id ?? 0));
                                      },
                                      icon: Icon(
                                        Icons.delete_outline,
                                        color: theme.colorScheme.error,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onSecondary,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sum Total',
                              style: theme.textTheme.titleLarge,
                            ),
                            Text(
                              state.sumTotal.toString(),
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Platform fee',
                              style: theme.textTheme.titleLarge,
                            ),
                            Text(
                              '20',
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${items[0].product?.symbol}${(state.sumTotal + 20)}',
                              style: theme.textTheme.titleLarge,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Checkout',
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
      },
    );
  }
}
