import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/settings_item_model.dart';
import '../models/userprofile12_item_model.dart';
import '../models/productcard13_item_model.dart';
import '../models/productcard14_item_model.dart';
import '../models/banner3_item_model.dart';
import 'package:price_s_application2/presentation/homepage_full_three_screen/models/homepage_full_three_model.dart';
part 'homepage_full_three_event.dart';
part 'homepage_full_three_state.dart';

/// A bloc that manages the state of a HomepageFullThree according to the event that is dispatched to it.
class HomepageFullThreeBloc
    extends Bloc<HomepageFullThreeEvent, HomepageFullThreeState> {
  HomepageFullThreeBloc(HomepageFullThreeState initialState)
      : super(initialState) {
    on<HomepageFullThreeInitialEvent>(_onInitialize);
  }

  List<SettingsItemModel> fillSettingsItemList() {
    return [
      SettingsItemModel(
          settingsIcon: ImageConstant.imgSettingsBlueGray900, text: "Women"),
      SettingsItemModel(text: "Men"),
      SettingsItemModel(text: "Accessories"),
      SettingsItemModel(text: "Beauty")
    ];
  }

  List<Userprofile12ItemModel> fillUserprofile12ItemList() {
    return List.generate(1, (index) => Userprofile12ItemModel());
  }

  List<Productcard13ItemModel> fillProductcard13ItemList() {
    return [
      Productcard13ItemModel(
          turtleneckSweater: ImageConstant.imgMaskGroup,
          productName: "Turtleneck Sweater ",
          productPrice: " 39.99"),
      Productcard13ItemModel(
          turtleneckSweater: ImageConstant.imgMaskGroup172x126,
          productName: "Long Sleeve Dress",
          productPrice: " 45.00"),
      Productcard13ItemModel(
          productName: "Sportwear Set", productPrice: " 80.00"),
      Productcard13ItemModel(
          productName: "Elegant Dress", productPrice: " 75.00")
    ];
  }

  List<Productcard14ItemModel> fillProductcard14ItemList() {
    return [
      Productcard14ItemModel(
          titleText: "White fashion hoodie", priceText: " 29.00"),
      Productcard14ItemModel(titleText: "Cotton T-shirt", priceText: " 30.00")
    ];
  }

  List<Banner3ItemModel> fillBanner3ItemList() {
    return [
      Banner3ItemModel(
          titleText: "The \nOffice\nLife",
          tShirtsText: "T-Shirts",
          bannerImage: ImageConstant.imgImage72)
    ];
  }

  _onInitialize(
    HomepageFullThreeInitialEvent event,
    Emitter<HomepageFullThreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageFullThreeModelObj: state.homepageFullThreeModelObj?.copyWith(
      settingsItemList: fillSettingsItemList(),
      userprofile12ItemList: fillUserprofile12ItemList(),
      productcard13ItemList: fillProductcard13ItemList(),
      productcard14ItemList: fillProductcard14ItemList(),
      banner3ItemList: fillBanner3ItemList(),
    )));
  }
}
