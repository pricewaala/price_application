import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/close_item_model.dart';
import '../models/productcard4_item_model.dart';
import 'package:price_s_application2/presentation/search_two_screen/models/search_two_model.dart';
part 'search_two_event.dart';
part 'search_two_state.dart';

/// A bloc that manages the state of a SearchTwo according to the event that is dispatched to it.
class SearchTwoBloc extends Bloc<SearchTwoEvent, SearchTwoState> {
  SearchTwoBloc(SearchTwoState initialState) : super(initialState) {
    on<SearchTwoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchTwoState> emit,
  ) {
    List<CloseItemModel> newList =
        List<CloseItemModel>.from(state.searchTwoModelObj!.closeItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchTwoModelObj:
            state.searchTwoModelObj?.copyWith(closeItemList: newList)));
  }

  List<CloseItemModel> fillCloseItemList() {
    return List.generate(3, (index) => CloseItemModel());
  }

  List<Productcard4ItemModel> fillProductcard4ItemList() {
    return [
      Productcard4ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard4ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Pink",
          productPrice: " 34.00"),
      Productcard4ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchTwoInitialEvent event,
    Emitter<SearchTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTwoModelObj: state.searchTwoModelObj?.copyWith(
      closeItemList: fillCloseItemList(),
      productcard4ItemList: fillProductcard4ItemList(),
    )));
  }
}
