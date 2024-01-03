import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile5_item_model.dart';
import '../models/userprofile6_item_model.dart';
import '../models/productcard6_item_model.dart';
import '../models/productcard7_item_model.dart';
import '../models/homepagefulltwolist_item_model.dart';
import 'package:price_s_application2/presentation/homepage_full_two_screen/models/homepage_full_two_model.dart';
part 'homepage_full_two_event.dart';
part 'homepage_full_two_state.dart';

/// A bloc that manages the state of a HomepageFullTwo according to the event that is dispatched to it.
class HomepageFullTwoBloc
    extends Bloc<HomepageFullTwoEvent, HomepageFullTwoState> {
  HomepageFullTwoBloc(HomepageFullTwoState initialState) : super(initialState) {
    on<HomepageFullTwoInitialEvent>(_onInitialize);
  }

  List<Userprofile5ItemModel> fillUserprofile5ItemList() {
    return [
      Userprofile5ItemModel(
          dynamicImage: ImageConstant.imgLaptop, dynamicText: "Women"),
      Userprofile5ItemModel(dynamicText: "Men"),
      Userprofile5ItemModel(dynamicText: "Accessories"),
      Userprofile5ItemModel(dynamicText: "Beauty")
    ];
  }

  List<Userprofile6ItemModel> fillUserprofile6ItemList() {
    return List.generate(1, (index) => Userprofile6ItemModel());
  }

  List<Productcard6ItemModel> fillProductcard6ItemList() {
    return [
      Productcard6ItemModel(
          productImage: ImageConstant.imgMaskGroup,
          titleText: "Turtleneck Sweater ",
          priceText: " 39.99"),
      Productcard6ItemModel(
          productImage: ImageConstant.imgMaskGroup172x126,
          titleText: "Long Sleeve Dress",
          priceText: " 45.00"),
      Productcard6ItemModel(titleText: "Sportwear Set", priceText: " 80.00"),
      Productcard6ItemModel(titleText: "Elegant Dress", priceText: " 75.00")
    ];
  }

  List<Productcard7ItemModel> fillProductcard7ItemList() {
    return [
      Productcard7ItemModel(
          titleText: "White fashion hoodie", priceText: " 29.00"),
      Productcard7ItemModel(titleText: "Cotton T-shirt", priceText: " 30.00")
    ];
  }

  List<HomepagefulltwolistItemModel> fillHomepagefulltwolistItemList() {
    return [
      HomepagefulltwolistItemModel(
          dynamicProperty2: "Sale up to 40%",
          dynamicProperty3: "FOR SLIM\n& BEAUTY"),
      HomepagefulltwolistItemModel(dynamicProperty3: "Elegant\nDesign")
    ];
  }

  _onInitialize(
    HomepageFullTwoInitialEvent event,
    Emitter<HomepageFullTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageFullTwoModelObj: state.homepageFullTwoModelObj?.copyWith(
      userprofile5ItemList: fillUserprofile5ItemList(),
      userprofile6ItemList: fillUserprofile6ItemList(),
      productcard6ItemList: fillProductcard6ItemList(),
      productcard7ItemList: fillProductcard7ItemList(),
      homepagefulltwolistItemList: fillHomepagefulltwolistItemList(),
    )));
  }
}
