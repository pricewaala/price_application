import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid7_item_model.dart';
import 'package:price_s_application2/presentation/collection_two_two_screen/models/collection_two_two_model.dart';
part 'collection_two_two_event.dart';
part 'collection_two_two_state.dart';

/// A bloc that manages the state of a CollectionTwoTwo according to the event that is dispatched to it.
class CollectionTwoTwoBloc
    extends Bloc<CollectionTwoTwoEvent, CollectionTwoTwoState> {
  CollectionTwoTwoBloc(CollectionTwoTwoState initialState)
      : super(initialState) {
    on<CollectionTwoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionTwoTwoInitialEvent event,
    Emitter<CollectionTwoTwoState> emit,
  ) async {
    emit(state.copyWith(
        collectionTwoTwoModelObj: state.collectionTwoTwoModelObj?.copyWith(
      productcardgrid7ItemList: fillProductcardgrid7ItemList(),
    )));
  }

  List<Productcardgrid7ItemModel> fillProductcardgrid7ItemList() {
    return [
      Productcardgrid7ItemModel(
          productImage: ImageConstant.imgImage785,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Knitted Vest Dress",
          productPrice: "85.00",
          productRatingCount: "(50)"),
      Productcardgrid7ItemModel(
          productImage: ImageConstant.imgImage786,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Knitted Dress",
          productPrice: " 64.00",
          productRatingCount: "(39)"),
      Productcardgrid7ItemModel(
          productImage: ImageConstant.imgImage787,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Ribbed Top",
          productPrice: " 25.00",
          productRatingCount: "(37)"),
      Productcardgrid7ItemModel(
          productImage: ImageConstant.imgImage788,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Crop top beige",
          productPrice: " 24.00",
          productRatingCount: "(39)")
    ];
  }
}
