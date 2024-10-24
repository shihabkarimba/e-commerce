part of 'cart_data_bloc.dart';

sealed class CartDataEvent extends Equatable {
  const CartDataEvent();

  @override
  List<Object?> get props => [];
}

final class OnAddItemToCartEvent extends CartDataEvent {
  final ProductData product;
  const OnAddItemToCartEvent({
    required this.product,
  });
}

final class OnRemoveItemFromCartEvent extends CartDataEvent {
  final int? id;
  const OnRemoveItemFromCartEvent({
    required this.id,
  });
}

final class OnUpdateSizeEvent extends CartDataEvent {
  final int id;
  final int size;
  const OnUpdateSizeEvent({
    required this.id,
    required this.size,
  });
}

final class OnIncrementQuantityEvent extends CartDataEvent {
  final int id;
  const OnIncrementQuantityEvent({
    required this.id,
  });
}

final class OnDecrementQuantityEvent extends CartDataEvent {
  final int id;
  const OnDecrementQuantityEvent({
    required this.id,
  });
}
