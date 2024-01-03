import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard_item_model.dart';
import 'package:price_s_application2/presentation/homepage_screen/models/homepage_model.dart';
part 'homepage_event.dart';
part 'homepage_state.dart';

/// A bloc that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(HomepageState initialState) : super(initialState) {
    on<HomepageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageInitialEvent event,
    Emitter<HomepageState> emit,
  ) async {
    emit(state.copyWith(
        homepageModelObj: state.homepageModelObj?.copyWith(
      productcardItemList: fillProductcardItemList(),
    )));
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return [
      ProductcardItemModel(
          image: ImageConstant.imgMaskGroup,
          title: "Turtleneck Sweater ",
          price: " 39.99"),
      ProductcardItemModel(
          image: ImageConstant.imgMaskGroup172x126,
          title: "Long Sleeve Dress",
          price: " 45.00"),
      ProductcardItemModel(title: "Sportwear Set", price: " 80.00"),
      ProductcardItemModel(title: "Elegant Dress", price: " 75.00")
    ];
  }
}
