part of 'cart_data_bloc.dart';

class CartDataState extends Equatable {
  final List<ProductData> productList;
  const CartDataState({
    required this.productList,
  });

  @override
  List<Object?> get props => [
        productList,
      ];
}

class ProductData {
  final ProductModel? product;
  final int? selectedSize;
  final int? quantity;
  const ProductData({
    this.product,
    this.quantity,
    this.selectedSize,
  });

  ProductData copyWith({
    final ProductModel? product,
    final int? selectedSize,
    final int? quantity,
  }) =>
      ProductData(
        product: product ?? this.product,
        quantity: quantity ?? this.quantity,
        selectedSize: selectedSize ?? this.selectedSize,
      );
}
