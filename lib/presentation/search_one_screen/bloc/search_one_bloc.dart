import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recentsearch2_item_model.dart';
import '../models/productcard11_item_model.dart';
import 'package:price_s_application2/presentation/search_one_screen/models/search_one_model.dart';
part 'search_one_event.dart';
part 'search_one_state.dart';

/// A bloc that manages the state of a SearchOne according to the event that is dispatched to it.
class SearchOneBloc extends Bloc<SearchOneEvent, SearchOneState> {
  SearchOneBloc(SearchOneState initialState) : super(initialState) {
    on<SearchOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchOneState> emit,
  ) {
    List<Recentsearch2ItemModel> newList = List<Recentsearch2ItemModel>.from(
        state.searchOneModelObj!.recentsearch2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchOneModelObj:
            state.searchOneModelObj?.copyWith(recentsearch2ItemList: newList)));
  }

  List<Recentsearch2ItemModel> fillRecentsearch2ItemList() {
    return List.generate(3, (index) => Recentsearch2ItemModel());
  }

  List<Productcard11ItemModel> fillProductcard11ItemList() {
    return [
      Productcard11ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard11ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Dress",
          productPrice: " 34.00"),
      Productcard11ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchOneInitialEvent event,
    Emitter<SearchOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchOneModelObj: state.searchOneModelObj?.copyWith(
      recentsearch2ItemList: fillRecentsearch2ItemList(),
      productcard11ItemList: fillProductcard11ItemList(),
    )));
  }
}
