import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/collectiononestaggered_item_model.dart';
import 'package:price_s_application2/presentation/collection_one_screen/models/collection_one_model.dart';
part 'collection_one_event.dart';
part 'collection_one_state.dart';

/// A bloc that manages the state of a CollectionOne according to the event that is dispatched to it.
class CollectionOneBloc extends Bloc<CollectionOneEvent, CollectionOneState> {
  CollectionOneBloc(CollectionOneState initialState) : super(initialState) {
    on<CollectionOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionOneInitialEvent event,
    Emitter<CollectionOneState> emit,
  ) async {
    emit(state.copyWith(
        collectionOneModelObj: state.collectionOneModelObj?.copyWith(
      collectiononestaggeredItemList: fillCollectiononestaggeredItemList(),
    )));
  }

  List<CollectiononestaggeredItemModel> fillCollectiononestaggeredItemList() {
    return [
      CollectiononestaggeredItemModel(image: ImageConstant.imgImage94),
      CollectiononestaggeredItemModel(image: ImageConstant.imgImage78250x168),
      CollectiononestaggeredItemModel(image: ImageConstant.imgImage78230x154),
      CollectiononestaggeredItemModel(image: ImageConstant.imgImage95)
    ];
  }
}
