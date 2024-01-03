import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid1_item_model.dart';
import 'package:price_s_application2/presentation/collection_two_screen/models/collection_two_model.dart';
part 'collection_two_event.dart';
part 'collection_two_state.dart';

/// A bloc that manages the state of a CollectionTwo according to the event that is dispatched to it.
class CollectionTwoBloc extends Bloc<CollectionTwoEvent, CollectionTwoState> {
  CollectionTwoBloc(CollectionTwoState initialState) : super(initialState) {
    on<CollectionTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionTwoInitialEvent event,
    Emitter<CollectionTwoState> emit,
  ) async {
    emit(state.copyWith(
        collectionTwoModelObj: state.collectionTwoModelObj?.copyWith(
      productcardgrid1ItemList: fillProductcardgrid1ItemList(),
    )));
  }

  List<Productcardgrid1ItemModel> fillProductcardgrid1ItemList() {
    return [
      Productcardgrid1ItemModel(
          productImage: ImageConstant.imgImage785,
          favoriteButton: ImageConstant.imgFavorite,
          productName: "Knitted Vest Dress",
          productPrice: "85.00",
          productRatingCount: "(50)"),
      Productcardgrid1ItemModel(
          productImage: ImageConstant.imgImage786,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Knitted Dress",
          productPrice: " 64.00",
          productRatingCount: "(39)"),
      Productcardgrid1ItemModel(
          productImage: ImageConstant.imgImage787,
          favoriteButton: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Ribbed Top",
          productPrice: " 25.00",
          productRatingCount: "(37)"),
      Productcardgrid1ItemModel(
          productImage: ImageConstant.imgImage788,
          favoriteButton: ImageConstant.imgFavorite,
          productName: "Crop top beige",
          productPrice: " 24.00",
          productRatingCount: "(39)")
    ];
  }
}
