import 'package:e_commerce/Models/ProductModel/product_model.dart';

import '../../../gen/assets.gen.dart';

class ProductStaticData {
  //TODO(SHIHAB) These data should come from an api or databases
  static String get commonDescription =>
      'Lorem ipsum dolor sit amet consectetur. Diam et augue est enim posuere fames. Placerat netus est at eget vivamus auctor id sit. Sodales aliquam malesuada sed pellentesque. Tortor eleifend faucibus lacus in lorem ipsum curabitur.';
  static List<ProductModel> data = <ProductModel>[
    ProductModel(
      id: 1,
      name: 'Sample1',
      image: Assets.img.shoe.path,
      tag: 'BEST SELLER',
      availableSizes: [27, 31, 33, 44],
      description: commonDescription,
      gallery: [
        Assets.img.shoe.path,
        Assets.img.shoe.path,
        Assets.img.shoe.path,
      ],
      price: 879,
      symbol: '\$',
    ),
    ProductModel(
      id: 2,
      name: 'Sample2',
      image: Assets.img.shoe.path,
      tag: 'BEST SELLER',
      availableSizes: [33, 34, 36, 44, 55],
      description: commonDescription,
      gallery: [
        Assets.img.shoe.path,
        Assets.img.shoe.path,
      ],
      price: 667,
      symbol: '\$',
    ),
    ProductModel(
      id: 3,
      name: 'Sample3',
      image: Assets.img.shoe.path,
      tag: 'BEST SELLER',
      availableSizes: [17, 22, 26, 32, 38, 42],
      description: commonDescription,
      gallery: [
        Assets.img.shoe.path,
        Assets.img.shoe.path,
        Assets.img.shoe.path,
        Assets.img.shoe.path,
      ],
      price: 267,
      symbol: '\$',
    ),
    ProductModel(
      id: 4,
      name: 'Sample4',
      image: Assets.img.shoe.path,
      tag: 'BEST SELLER',
      availableSizes: [19, 22, 27, 29, 34],
      description: commonDescription,
      gallery: [
        Assets.img.shoe.path,
        Assets.img.shoe.path,
      ],
      price: 999,
      symbol: '\$',
    ),
  ];
}
