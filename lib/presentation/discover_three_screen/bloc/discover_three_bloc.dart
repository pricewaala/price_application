import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist4_item_model.dart';
import 'package:price_s_application2/presentation/discover_three_screen/models/discover_three_model.dart';
part 'discover_three_event.dart';
part 'discover_three_state.dart';

/// A bloc that manages the state of a DiscoverThree according to the event that is dispatched to it.
class DiscoverThreeBloc extends Bloc<DiscoverThreeEvent, DiscoverThreeState> {
  DiscoverThreeBloc(DiscoverThreeState initialState) : super(initialState) {
    on<DiscoverThreeInitialEvent>(_onInitialize);
  }

  List<Productlist4ItemModel> fillProductlist4ItemList() {
    return [
      Productlist4ItemModel(
          jacketText: "Jacket",
          itemCount1Text: "128 Items",
          skirtsText: "Skirts",
          itemCount2Text: "40 Items",
          dressesText: "Dresses",
          itemCount3Text: "36 Items",
          sweatersText: "Sweaters",
          itemCount4Text: "24 Items",
          jeansText: "Jeans",
          itemCount5Text: "14 Items",
          tshirtsText: "T-Shirts",
          itemCount6Text: "12 Items",
          pantsText: "Pants",
          itemCount7Text: "9 Items")
    ];
  }

  _onInitialize(
    DiscoverThreeInitialEvent event,
    Emitter<DiscoverThreeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        discoverThreeModelObj: state.discoverThreeModelObj?.copyWith(
      productlist4ItemList: fillProductlist4ItemList(),
    )));
  }
}
