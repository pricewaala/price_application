import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/close2_item_model.dart';
import '../models/productcard12_item_model.dart';
import 'package:price_s_application2/presentation/search_two_one_screen/models/search_two_one_model.dart';
part 'search_two_one_event.dart';
part 'search_two_one_state.dart';

/// A bloc that manages the state of a SearchTwoOne according to the event that is dispatched to it.
class SearchTwoOneBloc extends Bloc<SearchTwoOneEvent, SearchTwoOneState> {
  SearchTwoOneBloc(SearchTwoOneState initialState) : super(initialState) {
    on<SearchTwoOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchTwoOneState> emit,
  ) {
    List<Close2ItemModel> newList =
        List<Close2ItemModel>.from(state.searchTwoOneModelObj!.close2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchTwoOneModelObj:
            state.searchTwoOneModelObj?.copyWith(close2ItemList: newList)));
  }

  List<Close2ItemModel> fillClose2ItemList() {
    return List.generate(3, (index) => Close2ItemModel());
  }

  List<Productcard12ItemModel> fillProductcard12ItemList() {
    return [
      Productcard12ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard12ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Pink",
          productPrice: " 34.00"),
      Productcard12ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchTwoOneInitialEvent event,
    Emitter<SearchTwoOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTwoOneModelObj: state.searchTwoOneModelObj?.copyWith(
      close2ItemList: fillClose2ItemList(),
      productcard12ItemList: fillProductcard12ItemList(),
    )));
  }
}
