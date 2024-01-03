import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recentsearch_item_model.dart';
import '../models/productcard3_item_model.dart';
import 'package:price_s_application2/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchState> emit,
  ) {
    List<RecentsearchItemModel> newList = List<RecentsearchItemModel>.from(
        state.searchModelObj!.recentsearchItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(recentsearchItemList: newList)));
  }

  List<RecentsearchItemModel> fillRecentsearchItemList() {
    return List.generate(3, (index) => RecentsearchItemModel());
  }

  List<Productcard3ItemModel> fillProductcard3ItemList() {
    return [
      Productcard3ItemModel(
          productImage: ImageConstant.imgMaskGroup1,
          productName: "Lihua Tunic White",
          productPrice: " 53.00"),
      Productcard3ItemModel(
          productImage: ImageConstant.imgMaskGroup2,
          productName: "Skirt Dress",
          productPrice: " 34.00"),
      Productcard3ItemModel(
          productImage: ImageConstant.imgMaskGroup3,
          productName: "Kimi Green Dress",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      recentsearchItemList: fillRecentsearchItemList(),
      productcard3ItemList: fillProductcard3ItemList(),
    )));
  }
}
