import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view5_item_model.dart';
import 'package:price_s_application2/presentation/product_three_screen/models/product_three_model.dart';
part 'product_three_event.dart';
part 'product_three_state.dart';

/// A bloc that manages the state of a ProductThree according to the event that is dispatched to it.
class ProductThreeBloc extends Bloc<ProductThreeEvent, ProductThreeState> {
  ProductThreeBloc(ProductThreeState initialState) : super(initialState) {
    on<ProductThreeInitialEvent>(_onInitialize);
  }

  List<View5ItemModel> fillView5ItemList() {
    return List.generate(1, (index) => View5ItemModel());
  }

  _onInitialize(
    ProductThreeInitialEvent event,
    Emitter<ProductThreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productThreeModelObj: state.productThreeModelObj?.copyWith(
      view5ItemList: fillView5ItemList(),
    )));
  }
}
