import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile7_item_model.dart';
import '../models/userprofile8_item_model.dart';
import '../models/productcard9_item_model.dart';
import '../models/productcard10_item_model.dart';
import '../models/salecomponent_item_model.dart';
import 'package:price_s_application2/presentation/homepage_full_one_screen/models/homepage_full_one_model.dart';
part 'homepage_full_one_event.dart';
part 'homepage_full_one_state.dart';

/// A bloc that manages the state of a HomepageFullOne according to the event that is dispatched to it.
class HomepageFullOneBloc
    extends Bloc<HomepageFullOneEvent, HomepageFullOneState> {
  HomepageFullOneBloc(HomepageFullOneState initialState) : super(initialState) {
    on<HomepageFullOneInitialEvent>(_onInitialize);
  }

  List<Userprofile7ItemModel> fillUserprofile7ItemList() {
    return [
      Userprofile7ItemModel(
          dynamicImage: ImageConstant.imgLaptop, dynamicText: "Women"),
      Userprofile7ItemModel(dynamicText: "Men"),
      Userprofile7ItemModel(dynamicText: "Accessories"),
      Userprofile7ItemModel(dynamicText: "Beauty")
    ];
  }

  List<Userprofile8ItemModel> fillUserprofile8ItemList() {
    return List.generate(1, (index) => Userprofile8ItemModel());
  }

  List<Productcard9ItemModel> fillProductcard9ItemList() {
    return [
      Productcard9ItemModel(
          productImage: ImageConstant.imgMaskGroup,
          productName: "Turtleneck Sweater ",
          productPrice: " 39.99"),
      Productcard9ItemModel(
          productImage: ImageConstant.imgMaskGroup172x126,
          productName: "Long Sleeve Dress",
          productPrice: " 45.00"),
      Productcard9ItemModel(
          productName: "Sportwear Set", productPrice: " 80.00"),
      Productcard9ItemModel(
          productName: "Elegant Dress", productPrice: " 75.00")
    ];
  }

  List<Productcard10ItemModel> fillProductcard10ItemList() {
    return [
      Productcard10ItemModel(
          productTitle: "White fashion hoodie", productPrice: " 29.00"),
      Productcard10ItemModel(
          productTitle: "Cotton T-shirt", productPrice: " 30.00")
    ];
  }

  List<SalecomponentItemModel> fillSalecomponentItemList() {
    return [
      SalecomponentItemModel(
          text: "Sale up to 40%", text1: "FOR SLIM\n& BEAUTY"),
      SalecomponentItemModel(text1: "Elegant\nDesign")
    ];
  }

  _onInitialize(
    HomepageFullOneInitialEvent event,
    Emitter<HomepageFullOneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageFullOneModelObj: state.homepageFullOneModelObj?.copyWith(
      userprofile7ItemList: fillUserprofile7ItemList(),
      userprofile8ItemList: fillUserprofile8ItemList(),
      productcard9ItemList: fillProductcard9ItemList(),
      productcard10ItemList: fillProductcard10ItemList(),
      salecomponentItemList: fillSalecomponentItemList(),
    )));
  }
}
