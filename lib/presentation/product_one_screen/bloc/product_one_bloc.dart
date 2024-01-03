import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view2_item_model.dart';
import 'package:price_s_application2/presentation/product_one_screen/models/product_one_model.dart';
part 'product_one_event.dart';
part 'product_one_state.dart';

/// A bloc that manages the state of a ProductOne according to the event that is dispatched to it.
class ProductOneBloc extends Bloc<ProductOneEvent, ProductOneState> {
  ProductOneBloc(ProductOneState initialState) : super(initialState) {
    on<ProductOneInitialEvent>(_onInitialize);
  }

  List<View2ItemModel> fillView2ItemList() {
    return List.generate(1, (index) => View2ItemModel());
  }

  _onInitialize(
    ProductOneInitialEvent event,
    Emitter<ProductOneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productOneModelObj: state.productOneModelObj?.copyWith(
      view2ItemList: fillView2ItemList(),
    )));
  }
}
