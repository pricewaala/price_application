import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/collectiononeonestaggered_item_model.dart';
import 'package:price_s_application2/presentation/collection_one_one_screen/models/collection_one_one_model.dart';
part 'collection_one_one_event.dart';
part 'collection_one_one_state.dart';

/// A bloc that manages the state of a CollectionOneOne according to the event that is dispatched to it.
class CollectionOneOneBloc
    extends Bloc<CollectionOneOneEvent, CollectionOneOneState> {
  CollectionOneOneBloc(CollectionOneOneState initialState)
      : super(initialState) {
    on<CollectionOneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionOneOneInitialEvent event,
    Emitter<CollectionOneOneState> emit,
  ) async {
    emit(state.copyWith(
        collectionOneOneModelObj: state.collectionOneOneModelObj?.copyWith(
      collectiononeonestaggeredItemList:
          fillCollectiononeonestaggeredItemList(),
    )));
  }

  List<CollectiononeonestaggeredItemModel>
      fillCollectiononeonestaggeredItemList() {
    return [
      CollectiononeonestaggeredItemModel(image: ImageConstant.imgImage94),
      CollectiononeonestaggeredItemModel(
          image: ImageConstant.imgImage78250x168),
      CollectiononeonestaggeredItemModel(
          image: ImageConstant.imgImage78230x154),
      CollectiononeonestaggeredItemModel(image: ImageConstant.imgImage95)
    ];
  }
}
