import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/collectiononetwostack_item_model.dart';
import 'package:price_s_application2/presentation/collection_one_two_screen/models/collection_one_two_model.dart';
part 'collection_one_two_event.dart';
part 'collection_one_two_state.dart';

/// A bloc that manages the state of a CollectionOneTwo according to the event that is dispatched to it.
class CollectionOneTwoBloc
    extends Bloc<CollectionOneTwoEvent, CollectionOneTwoState> {
  CollectionOneTwoBloc(CollectionOneTwoState initialState)
      : super(initialState) {
    on<CollectionOneTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CollectionOneTwoInitialEvent event,
    Emitter<CollectionOneTwoState> emit,
  ) async {
    emit(state.copyWith(
        collectionOneTwoModelObj: state.collectionOneTwoModelObj?.copyWith(
      collectiononetwostackItemList: fillCollectiononetwostackItemList(),
    )));
  }

  List<CollectiononetwostackItemModel> fillCollectiononetwostackItemList() {
    return [
      CollectiononetwostackItemModel(image: ImageConstant.imgImage94),
      CollectiononetwostackItemModel(image: ImageConstant.imgImage78250x168),
      CollectiononetwostackItemModel(image: ImageConstant.imgImage78230x154),
      CollectiononetwostackItemModel(image: ImageConstant.imgImage95)
    ];
  }
}
