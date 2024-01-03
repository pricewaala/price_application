import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accessoriescomponent_item_model.dart';
import 'package:price_s_application2/presentation/discover_full_screen/models/discover_full_model.dart';
part 'discover_full_event.dart';
part 'discover_full_state.dart';

/// A bloc that manages the state of a DiscoverFull according to the event that is dispatched to it.
class DiscoverFullBloc extends Bloc<DiscoverFullEvent, DiscoverFullState> {
  DiscoverFullBloc(DiscoverFullState initialState) : super(initialState) {
    on<DiscoverFullInitialEvent>(_onInitialize);
  }

  List<AccessoriescomponentItemModel> fillAccessoriescomponentItemList() {
    return [
      AccessoriescomponentItemModel(
          accessories: "ACCESSORIES",
          accessories1: "ACCESSORIES",
          accessories2: ImageConstant.imgMaskGroup106x151),
      AccessoriescomponentItemModel(
          accessories: "SHOES",
          accessories1: "SHOES",
          accessories2: ImageConstant.imgShoes2),
      AccessoriescomponentItemModel(
          accessories: "SHOES",
          accessories1: "COLLECTION",
          accessories2: ImageConstant.imgMaskGroup125x100)
    ];
  }

  _onInitialize(
    DiscoverFullInitialEvent event,
    Emitter<DiscoverFullState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        discoverFullModelObj: state.discoverFullModelObj?.copyWith(
      accessoriescomponentItemList: fillAccessoriescomponentItemList(),
    )));
  }
}
