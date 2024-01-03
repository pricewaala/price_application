import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard15_item_model.dart';
import 'package:price_s_application2/presentation/homepage_two_screen/models/homepage_two_model.dart';
part 'homepage_two_event.dart';
part 'homepage_two_state.dart';

/// A bloc that manages the state of a HomepageTwo according to the event that is dispatched to it.
class HomepageTwoBloc extends Bloc<HomepageTwoEvent, HomepageTwoState> {
  HomepageTwoBloc(HomepageTwoState initialState) : super(initialState) {
    on<HomepageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageTwoInitialEvent event,
    Emitter<HomepageTwoState> emit,
  ) async {
    emit(state.copyWith(
        homepageTwoModelObj: state.homepageTwoModelObj?.copyWith(
      productcard15ItemList: fillProductcard15ItemList(),
    )));
  }

  List<Productcard15ItemModel> fillProductcard15ItemList() {
    return [
      Productcard15ItemModel(
          productImage: ImageConstant.imgMaskGroup,
          titleText: "Turtleneck Sweater ",
          priceText: " 39.99"),
      Productcard15ItemModel(
          productImage: ImageConstant.imgMaskGroup172x126,
          titleText: "Long Sleeve Dress",
          priceText: " 45.00"),
      Productcard15ItemModel(titleText: "Sportwear Set", priceText: " 80.00"),
      Productcard15ItemModel(titleText: "Elegant Dress", priceText: " 75.00")
    ];
  }
}
