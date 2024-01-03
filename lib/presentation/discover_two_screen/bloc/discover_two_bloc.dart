import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile9_item_model.dart';
import 'package:price_s_application2/presentation/discover_two_screen/models/discover_two_model.dart';
part 'discover_two_event.dart';
part 'discover_two_state.dart';

/// A bloc that manages the state of a DiscoverTwo according to the event that is dispatched to it.
class DiscoverTwoBloc extends Bloc<DiscoverTwoEvent, DiscoverTwoState> {
  DiscoverTwoBloc(DiscoverTwoState initialState) : super(initialState) {
    on<DiscoverTwoInitialEvent>(_onInitialize);
  }

  List<Userprofile9ItemModel> fillUserprofile9ItemList() {
    return [
      Userprofile9ItemModel(
          clothing: "CLOTHING", clothing1: ImageConstant.imgMaskGroup126x123)
    ];
  }

  _onInitialize(
    DiscoverTwoInitialEvent event,
    Emitter<DiscoverTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        discoverTwoModelObj: state.discoverTwoModelObj?.copyWith(
      userprofile9ItemList: fillUserprofile9ItemList(),
    )));
  }
}
