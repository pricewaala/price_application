import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile13_item_model.dart';
import 'package:price_s_application2/presentation/discover_one_screen/models/discover_one_model.dart';
part 'discover_one_event.dart';
part 'discover_one_state.dart';

/// A bloc that manages the state of a DiscoverOne according to the event that is dispatched to it.
class DiscoverOneBloc extends Bloc<DiscoverOneEvent, DiscoverOneState> {
  DiscoverOneBloc(DiscoverOneState initialState) : super(initialState) {
    on<DiscoverOneInitialEvent>(_onInitialize);
  }

  List<Userprofile13ItemModel> fillUserprofile13ItemList() {
    return [
      Userprofile13ItemModel(
          clothing: "CLOTHING", clothing1: ImageConstant.imgMaskGroup126x123)
    ];
  }

  _onInitialize(
    DiscoverOneInitialEvent event,
    Emitter<DiscoverOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        discoverOneModelObj: state.discoverOneModelObj?.copyWith(
      userprofile13ItemList: fillUserprofile13ItemList(),
    )));
  }
}
