import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discover_item_model.dart';
import 'package:price_s_application2/presentation/discover_screen/models/discover_model.dart';
part 'discover_event.dart';
part 'discover_state.dart';

/// A bloc that manages the state of a Discover according to the event that is dispatched to it.
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(DiscoverState initialState) : super(initialState) {
    on<DiscoverInitialEvent>(_onInitialize);
  }

  List<DiscoverItemModel> fillDiscoverItemList() {
    return [DiscoverItemModel(image: ImageConstant.imgMaskGroup126x123)];
  }

  _onInitialize(
    DiscoverInitialEvent event,
    Emitter<DiscoverState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        discoverModelObj: state.discoverModelObj?.copyWith(
      discoverItemList: fillDiscoverItemList(),
    )));
  }
}
