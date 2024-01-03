import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view4_item_model.dart';
import 'package:price_s_application2/presentation/product_two_screen/models/product_two_model.dart';
part 'product_two_event.dart';
part 'product_two_state.dart';

/// A bloc that manages the state of a ProductTwo according to the event that is dispatched to it.
class ProductTwoBloc extends Bloc<ProductTwoEvent, ProductTwoState> {
  ProductTwoBloc(ProductTwoState initialState) : super(initialState) {
    on<ProductTwoInitialEvent>(_onInitialize);
  }

  List<View4ItemModel> fillView4ItemList() {
    return List.generate(1, (index) => View4ItemModel());
  }

  _onInitialize(
    ProductTwoInitialEvent event,
    Emitter<ProductTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productTwoModelObj: state.productTwoModelObj?.copyWith(
      view4ItemList: fillView4ItemList(),
    )));
  }
}
