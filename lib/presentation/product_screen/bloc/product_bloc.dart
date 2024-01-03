import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view1_item_model.dart';
import 'package:price_s_application2/presentation/product_screen/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

/// A bloc that manages the state of a Product according to the event that is dispatched to it.
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(ProductState initialState) : super(initialState) {
    on<ProductInitialEvent>(_onInitialize);
  }

  List<View1ItemModel> fillView1ItemList() {
    return List.generate(1, (index) => View1ItemModel());
  }

  _onInitialize(
    ProductInitialEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productModelObj: state.productModelObj?.copyWith(
      view1ItemList: fillView1ItemList(),
    )));
  }
}
