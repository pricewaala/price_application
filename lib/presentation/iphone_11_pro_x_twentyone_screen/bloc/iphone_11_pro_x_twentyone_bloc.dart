import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist3_item_model.dart';
import 'package:price_s_application2/presentation/iphone_11_pro_x_twentyone_screen/models/iphone_11_pro_x_twentyone_model.dart';
part 'iphone_11_pro_x_twentyone_event.dart';
part 'iphone_11_pro_x_twentyone_state.dart';

/// A bloc that manages the state of a Iphone11ProXTwentyone according to the event that is dispatched to it.
class Iphone11ProXTwentyoneBloc
    extends Bloc<Iphone11ProXTwentyoneEvent, Iphone11ProXTwentyoneState> {
  Iphone11ProXTwentyoneBloc(Iphone11ProXTwentyoneState initialState)
      : super(initialState) {
    on<Iphone11ProXTwentyoneInitialEvent>(_onInitialize);
  }

  List<Productlist3ItemModel> fillProductlist3ItemList() {
    return [
      Productlist3ItemModel(
          title: "SHOES", subtitle: "SHOES", image: ImageConstant.imgShoes2),
      Productlist3ItemModel(
          title: "SHOES",
          subtitle: "COLLECTION",
          image: ImageConstant.imgMaskGroup125x100)
    ];
  }

  _onInitialize(
    Iphone11ProXTwentyoneInitialEvent event,
    Emitter<Iphone11ProXTwentyoneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        iphone11ProXTwentyoneModelObj:
            state.iphone11ProXTwentyoneModelObj?.copyWith(
      productlist3ItemList: fillProductlist3ItemList(),
    )));
  }
}
