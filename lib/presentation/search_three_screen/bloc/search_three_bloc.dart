import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recentsearch4_item_model.dart';
import '../models/productcard16_item_model.dart';
import 'package:price_s_application2/presentation/search_three_screen/models/search_three_model.dart';
part 'search_three_event.dart';
part 'search_three_state.dart';

/// A bloc that manages the state of a SearchThree according to the event that is dispatched to it.
class SearchThreeBloc extends Bloc<SearchThreeEvent, SearchThreeState> {
  SearchThreeBloc(SearchThreeState initialState) : super(initialState) {
    on<SearchThreeInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchThreeState> emit,
  ) {
    List<Recentsearch4ItemModel> newList = List<Recentsearch4ItemModel>.from(
        state.searchThreeModelObj!.recentsearch4ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchThreeModelObj: state.searchThreeModelObj
            ?.copyWith(recentsearch4ItemList: newList)));
  }

  List<Recentsearch4ItemModel> fillRecentsearch4ItemList() {
    return List.generate(3, (index) => Recentsearch4ItemModel());
  }

  List<Productcard16ItemModel> fillProductcard16ItemList() {
    return [
      Productcard16ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard16ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Dress",
          productPrice: " 34.00"),
      Productcard16ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchThreeInitialEvent event,
    Emitter<SearchThreeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchThreeModelObj: state.searchThreeModelObj?.copyWith(
      recentsearch4ItemList: fillRecentsearch4ItemList(),
      productcard16ItemList: fillProductcard16ItemList(),
    )));
  }
}
