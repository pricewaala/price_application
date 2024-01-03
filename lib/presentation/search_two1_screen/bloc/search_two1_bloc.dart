import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recentsearch6_item_model.dart';
import '../models/productcard17_item_model.dart';
import 'package:price_s_application2/presentation/search_two1_screen/models/search_two1_model.dart';
part 'search_two1_event.dart';
part 'search_two1_state.dart';

/// A bloc that manages the state of a SearchTwo1 according to the event that is dispatched to it.
class SearchTwo1Bloc extends Bloc<SearchTwo1Event, SearchTwo1State> {
  SearchTwo1Bloc(SearchTwo1State initialState) : super(initialState) {
    on<SearchTwo1InitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchTwo1State> emit,
  ) {
    List<Recentsearch6ItemModel> newList = List<Recentsearch6ItemModel>.from(
        state.searchTwo1ModelObj!.recentsearch6ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchTwo1ModelObj: state.searchTwo1ModelObj
            ?.copyWith(recentsearch6ItemList: newList)));
  }

  List<Recentsearch6ItemModel> fillRecentsearch6ItemList() {
    return List.generate(3, (index) => Recentsearch6ItemModel());
  }

  List<Productcard17ItemModel> fillProductcard17ItemList() {
    return [
      Productcard17ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard17ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Dress",
          productPrice: " 34.00"),
      Productcard17ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchTwo1InitialEvent event,
    Emitter<SearchTwo1State> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTwo1ModelObj: state.searchTwo1ModelObj?.copyWith(
      recentsearch6ItemList: fillRecentsearch6ItemList(),
      productcard17ItemList: fillProductcard17ItemList(),
    )));
  }
}
