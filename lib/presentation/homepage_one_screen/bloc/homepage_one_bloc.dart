import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard8_item_model.dart';
import 'package:price_s_application2/presentation/homepage_one_screen/models/homepage_one_model.dart';
part 'homepage_one_event.dart';
part 'homepage_one_state.dart';

/// A bloc that manages the state of a HomepageOne according to the event that is dispatched to it.
class HomepageOneBloc extends Bloc<HomepageOneEvent, HomepageOneState> {
  HomepageOneBloc(HomepageOneState initialState) : super(initialState) {
    on<HomepageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageOneInitialEvent event,
    Emitter<HomepageOneState> emit,
  ) async {
    emit(state.copyWith(
        homepageOneModelObj: state.homepageOneModelObj?.copyWith(
      productcard8ItemList: fillProductcard8ItemList(),
    )));
  }

  List<Productcard8ItemModel> fillProductcard8ItemList() {
    return [
      Productcard8ItemModel(
          productImage: ImageConstant.imgMaskGroup,
          titleText: "Turtleneck Sweater ",
          priceText: " 39.99"),
      Productcard8ItemModel(
          productImage: ImageConstant.imgMaskGroup172x126,
          titleText: "Long Sleeve Dress",
          priceText: " 45.00"),
      Productcard8ItemModel(titleText: "Sportwear Set", priceText: " 80.00"),
      Productcard8ItemModel(titleText: "Elegant Dress", priceText: " 75.00")
    ];
  }
}
