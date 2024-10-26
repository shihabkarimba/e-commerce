import 'package:flutter/material.dart';

import '../../../../Core/Router/route.dart';
import '../../../../Models/ProductModel/product_model.dart';

class ShowCaseWidget extends StatelessWidget {
  final ProductModel item;
  const ShowCaseWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        router.goNamed(Routes.productDetails.name, queryParameters: {
          QueryParams.id: item.id.toString(),
        });
      },
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          color: theme.colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
                right: 0,
                bottom: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        item.image ?? '',
                        width: 100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item.tag ?? '',
                        style: theme.textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w200,
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      Text(
                        '${item.name}',
                        style: theme.textTheme.displayLarge,
                      ),
                      Text(
                        '${item.symbol}${item.price}',
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
