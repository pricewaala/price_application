import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid3_item_model.dart';
import 'package:price_s_application2/presentation/found_results_one_screen/models/found_results_one_model.dart';
part 'found_results_one_event.dart';
part 'found_results_one_state.dart';

/// A bloc that manages the state of a FoundResultsOne according to the event that is dispatched to it.
class FoundResultsOneBloc
    extends Bloc<FoundResultsOneEvent, FoundResultsOneState> {
  FoundResultsOneBloc(FoundResultsOneState initialState) : super(initialState) {
    on<FoundResultsOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    FoundResultsOneInitialEvent event,
    Emitter<FoundResultsOneState> emit,
  ) async {
    emit(state.copyWith(
        foundResultsOneModelObj: state.foundResultsOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      productcardgrid3ItemList: fillProductcardgrid3ItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FoundResultsOneState> emit,
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

  List<Productcardgrid3ItemModel> fillProductcardgrid3ItemList() {
    return [
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage91,
          favoriteButton: ImageConstant.imgFavorite,
          titleText: "Linen Dress",
          priceText: " 52.00",
          discountedPriceText: " 90.00",
          ratingCountText: "(64)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage78,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          titleText: "Filted Waist Dress",
          priceText: " 47.99",
          discountedPriceText: " 82.00",
          ratingCountText: "(53)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage78186x141,
          favoriteButton: ImageConstant.imgFavorite,
          titleText: "Front Tie Mini Dress",
          ratingCountText: "(38)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage78184x140,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          titleText: "Maxi Dress",
          ratingCountText: "(46)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage781,
          favoriteButton: ImageConstant.imgFavorite,
          titleText: "Ohara Dress",
          ratingCountText: "(50)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage782,
          favoriteButton: ImageConstant.imgFavorite,
          titleText: "Tie Back Mini Dress",
          ratingCountText: "(39)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage783,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          titleText: "Leaves Green Dress",
          ratingCountText: "(83)"),
      Productcardgrid3ItemModel(
          productImage: ImageConstant.imgImage784,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          titleText: "Off Shoulder Dress",
          ratingCountText: "(25)")
    ];
  }
}
