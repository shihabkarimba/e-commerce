part of 'cart_data_bloc.dart';

class CartDataState extends Equatable {
  final List<ProductData> productList;
  const CartDataState({
    required this.productList,
  });

  double get sumTotal => productList.fold(0, (total, productData) {
        final productPrice = productData.product?.price ?? 0;
        final quantity = productData.quantity ?? 1;
        return total + (productPrice * quantity);
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
