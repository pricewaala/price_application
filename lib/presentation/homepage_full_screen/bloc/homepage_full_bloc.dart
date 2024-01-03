import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import '../models/userprofile_item_model.dart';
import '../models/productcard1_item_model.dart';
import '../models/productcard2_item_model.dart';
import '../models/salebannerlist_item_model.dart';
import 'package:price_s_application2/presentation/homepage_full_screen/models/homepage_full_model.dart';
part 'homepage_full_event.dart';
part 'homepage_full_state.dart';

/// A bloc that manages the state of a HomepageFull according to the event that is dispatched to it.
class HomepageFullBloc extends Bloc<HomepageFullEvent, HomepageFullState> {
  HomepageFullBloc(HomepageFullState initialState) : super(initialState) {
    on<HomepageFullInitialEvent>(_onInitialize);
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return [
      WidgetItemModel(
          dynamicProperty1: ImageConstant.imgLaptop, dynamicProperty2: "Women"),
      WidgetItemModel(dynamicProperty2: "Men"),
      WidgetItemModel(dynamicProperty2: "Accessories"),
      WidgetItemModel(dynamicProperty2: "Beauty")
    ];
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return List.generate(1, (index) => UserprofileItemModel());
  }

  List<Productcard1ItemModel> fillProductcard1ItemList() {
    return [
      Productcard1ItemModel(
          image: ImageConstant.imgMaskGroup,
          title: "Turtleneck Sweater ",
          price: " 39.99"),
      Productcard1ItemModel(
          image: ImageConstant.imgMaskGroup172x126,
          title: "Long Sleeve Dress",
          price: " 45.00"),
      Productcard1ItemModel(title: "Sportwear Set", price: " 80.00"),
      Productcard1ItemModel(title: "Elegant Dress", price: " 75.00")
    ];
  }

  List<Productcard2ItemModel> fillProductcard2ItemList() {
    return [
      Productcard2ItemModel(title: "White fashion hoodie", price: " 29.00"),
      Productcard2ItemModel(title: "Cotton T-shirt", price: " 30.00")
    ];
  }

  List<SalebannerlistItemModel> fillSalebannerlistItemList() {
    return [
      SalebannerlistItemModel(
          text: "Sale up to 40%", text1: "FOR SLIM\n& BEAUTY"),
      SalebannerlistItemModel(text1: "Elegant\nDesign")
    ];
  }

  _onInitialize(
    HomepageFullInitialEvent event,
    Emitter<HomepageFullState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageFullModelObj: state.homepageFullModelObj?.copyWith(
      widgetItemList: fillWidgetItemList(),
      userprofileItemList: fillUserprofileItemList(),
      productcard1ItemList: fillProductcard1ItemList(),
      productcard2ItemList: fillProductcard2ItemList(),
      salebannerlistItemList: fillSalebannerlistItemList(),
    )));
  }
}
