import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid5_item_model.dart';
import 'package:price_s_application2/presentation/collection_two_one_screen/models/collection_two_one_model.dart';
part 'collection_two_one_event.dart';
part 'collection_two_one_state.dart';

/// A bloc that manages the state of a CollectionTwoOne according to the event that is dispatched to it.
class CollectionTwoOneBloc
    extends Bloc<CollectionTwoOneEvent, CollectionTwoOneState> {
  CollectionTwoOneBloc(CollectionTwoOneState initialState)
      : super(initialState) {
    on<CollectionTwoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionTwoOneInitialEvent event,
    Emitter<CollectionTwoOneState> emit,
  ) async {
    emit(state.copyWith(
        collectionTwoOneModelObj: state.collectionTwoOneModelObj?.copyWith(
      productcardgrid5ItemList: fillProductcardgrid5ItemList(),
    )));
  }

  List<Productcardgrid5ItemModel> fillProductcardgrid5ItemList() {
    return [
      Productcardgrid5ItemModel(
          productImage: ImageConstant.imgImage785,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Knitted Vest Dress",
          productPrice: "85.00",
          productRatingCount: "(50)"),
      Productcardgrid5ItemModel(
          productImage: ImageConstant.imgImage786,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Knitted Dress",
          productPrice: " 64.00",
          productRatingCount: "(39)"),
      Productcardgrid5ItemModel(
          productImage: ImageConstant.imgImage787,
          favoriteIcon: ImageConstant.imgFavoriteBlueGray10005,
          productName: "Ribbed Top",
          productPrice: " 25.00",
          productRatingCount: "(37)"),
      Productcardgrid5ItemModel(
          productImage: ImageConstant.imgImage788,
          favoriteIcon: ImageConstant.imgFavorite,
          productName: "Crop top beige",
          productPrice: " 24.00",
          productRatingCount: "(39)")
    ];
  }
}
