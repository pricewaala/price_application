import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/product_four_bottomsheet/models/product_four_model.dart';
part 'product_four_event.dart';
part 'product_four_state.dart';

/// A bloc that manages the state of a ProductFour according to the event that is dispatched to it.
class ProductFourBloc extends Bloc<ProductFourEvent, ProductFourState> {
  ProductFourBloc(ProductFourState initialState) : super(initialState) {
    on<ProductFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductFourInitialEvent event,
    Emitter<ProductFourState> emit,
  ) async {}
}
