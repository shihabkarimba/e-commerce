import 'package:bloc/bloc.dart';
import 'package:e_commerce/Models/ProductModel/product_model.dart';
import 'package:e_commerce/Presentation/Shared/Widgets/toast_widget.dart';
import 'package:equatable/equatable.dart';

part 'cart_data_event.dart';
part 'cart_data_state.dart';

class CartDataBloc extends Bloc<CartDataEvent, CartDataState> {
  CartDataBloc() : super(const CartDataState(productList: [])) {
    on<OnAddItemToCartEvent>(_addItemToCart);
    on<OnRemoveItemFromCartEvent>(_removeItemFromCart);
    on<OnIncrementQuantityEvent>(_incrementItem);
    on<OnDecrementQuantityEvent>(_decrementItem);
    on<OnUpdateSizeEvent>(_updateSize);
  }
  void _addItemToCart(
    OnAddItemToCartEvent event,
    Emitter<CartDataState> emit,
  ) {
    final item = state.productList.firstWhere(
        (e) => e.product?.id == event.product.product?.id,
        orElse: () => const ProductData());
    if (item.product?.id == null) {
      final productList = state.productList;
      emit(CartDataState(
        productList: [
          event.product,
          ...productList,
        ],
      ));
      showToast(
        msg: 'Item added to cart',
      );
    } else {
      showToast(
        msg: 'The Item already added into cart',
        toastType: ToastType.error,
      );
    }
  }

  void _removeItemFromCart(
    OnRemoveItemFromCartEvent event,
    Emitter<CartDataState> emit,
  ) {
    final items =
        state.productList.where((e) => e.product?.id != event.id).toList();
    emit(CartDataState(
      productList: items,
    ));
  }

  void _incrementItem(
    OnIncrementQuantityEvent event,
    Emitter<CartDataState> emit,
  ) {
    final updatedProductList = state.productList.map((e) {
      if (e.product?.id == event.id) {
        return e.copyWith(
          quantity: (e.quantity ?? 0) + 1,
        );
      }
      return e;
    }).toList();

    emit(
      CartDataState(
        productList: updatedProductList,
      ),
    );
  }

  void _decrementItem(
    OnDecrementQuantityEvent event,
    Emitter<CartDataState> emit,
  ) {
    final item = state.productList.firstWhere((e) => e.product?.id == event.id);
    final updatedItem = item.copyWith(
      quantity: (item.quantity ?? 0) - 1,
    );
    final productListWithoutSelectedItem = state.productList
        .where((e) => e.product?.id != item.product?.id)
        .toList();
    emit(
      CartDataState(
        productList: [
          updatedItem,
          ...productListWithoutSelectedItem,
        ],
      ),
    );
  }

  void _updateSize(
    OnUpdateSizeEvent event,
    Emitter<CartDataState> emit,
  ) {
    final item = state.productList.firstWhere((e) => e.product?.id == event.id);
    final updatedItem = item.copyWith(
      selectedSize: event.size,
    );
    final productListWithoutSelectedItem = state.productList
        .where((e) => e.product?.id != item.product?.id)
        .toList();
    emit(
      CartDataState(
        productList: [
          updatedItem,
          ...productListWithoutSelectedItem,
        ],
      ),
    );
  }
}
