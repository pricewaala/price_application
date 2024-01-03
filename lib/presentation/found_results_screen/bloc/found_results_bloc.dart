import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid_item_model.dart';
import 'package:price_s_application2/presentation/found_results_screen/models/found_results_model.dart';
part 'found_results_event.dart';
part 'found_results_state.dart';

/// A bloc that manages the state of a FoundResults according to the event that is dispatched to it.
class FoundResultsBloc extends Bloc<FoundResultsEvent, FoundResultsState> {
  FoundResultsBloc(FoundResultsState initialState) : super(initialState) {
    on<FoundResultsInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    FoundResultsInitialEvent event,
    Emitter<FoundResultsState> emit,
  ) async {
    emit(state.copyWith(
        foundResultsModelObj: state.foundResultsModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      productcardgridItemList: fillProductcardgridItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FoundResultsState> emit,
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

  List<ProductcardgridItemModel> fillProductcardgridItemList() {
    return [
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage91,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Linen Dress",
          productPrice: " 52.00",
          productDiscountedPrice: " 90.00",
          productRatingCount: "(64)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage78,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Filted Waist Dress",
          productPrice: " 47.99",
          productDiscountedPrice: " 82.00",
          productRatingCount: "(53)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage78186x141,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Front Tie Mini Dress",
          productRatingCount: "(38)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage78184x140,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Maxi Dress",
          productRatingCount: "(46)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage781,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Ohara Dress",
          productRatingCount: "(50)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage782,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Tie Back Mini Dress",
          productRatingCount: "(39)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage783,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Leaves Green Dress",
          productRatingCount: "(83)"),
      ProductcardgridItemModel(
          productImage: ImageConstant.imgImage784,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Off Shoulder Dress",
          productRatingCount: "(25)")
    ];
  }
}
