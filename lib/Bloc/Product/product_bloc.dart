import 'package:bloc/bloc.dart';
import 'package:e_commerce_assignment/Core/Constants/Usages/product_static_data.dart';
import 'package:equatable/equatable.dart';

import '../../Models/ProductModel/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitialState()) {
    on<OnGetProductEvent>(_getUserData);
  }
  void _getUserData(OnGetProductEvent event, Emitter<ProductState> emit) async {
    emit(ProductLoadingState());

    try {
      await Future.delayed(const Duration(seconds: 1));
      final res = ProductStaticData.data;
      emit(ProductLoadedState(productList: res));
    } catch (e) {
      emit(const ProductErrorState());
    }
  }
}
