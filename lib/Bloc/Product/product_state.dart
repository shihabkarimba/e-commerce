part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object?> get props => [];
}

final class ProductInitialState extends ProductState {}

final class ProductLoadedState extends ProductState {
  final List<ProductModel> productList;
  const ProductLoadedState({
    required this.productList,
  });
}

final class ProductLoadingState extends ProductState {}

final class ProductErrorState extends ProductState {
  const ProductErrorState();

  @override
  List<Object?> get props => [];
}
