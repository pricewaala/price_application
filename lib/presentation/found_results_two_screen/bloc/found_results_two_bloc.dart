import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid4_item_model.dart';
import 'package:price_s_application2/presentation/found_results_two_screen/models/found_results_two_model.dart';
part 'found_results_two_event.dart';
part 'found_results_two_state.dart';

/// A bloc that manages the state of a FoundResultsTwo according to the event that is dispatched to it.
class FoundResultsTwoBloc
    extends Bloc<FoundResultsTwoEvent, FoundResultsTwoState> {
  FoundResultsTwoBloc(FoundResultsTwoState initialState) : super(initialState) {
    on<FoundResultsTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    FoundResultsTwoInitialEvent event,
    Emitter<FoundResultsTwoState> emit,
  ) async {
    emit(state.copyWith(
        foundResultsTwoModelObj: state.foundResultsTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      productcardgrid4ItemList: fillProductcardgrid4ItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FoundResultsTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<Productcardgrid4ItemModel> fillProductcardgrid4ItemList() {
    return [
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage91,
          favoriteIcon: ImageConstant.imgFavorite,
          title: "Linen Dress",
          price: " 52.00",
          discountedPrice: " 90.00",
          ratingCount: "(64)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage78,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          title: "Filted Waist Dress",
          price: " 47.99",
          discountedPrice: " 82.00",
          ratingCount: "(53)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage78186x141,
          favoriteIcon: ImageConstant.imgFavorite,
          title: "Front Tie Mini Dress",
          ratingCount: "(38)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage78184x140,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          title: "Maxi Dress",
          ratingCount: "(46)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage781,
          favoriteIcon: ImageConstant.imgFavorite,
          title: "Ohara Dress",
          ratingCount: "(50)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage782,
          favoriteIcon: ImageConstant.imgFavorite,
          title: "Tie Back Mini Dress",
          ratingCount: "(39)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage783,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          title: "Leaves Green Dress",
          ratingCount: "(83)"),
      Productcardgrid4ItemModel(
          productImage: ImageConstant.imgImage784,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          title: "Off Shoulder Dress",
          ratingCount: "(25)")
    ];
  }
}
