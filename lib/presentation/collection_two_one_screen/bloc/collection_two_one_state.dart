// ignore_for_file: must_be_immutable

part of 'collection_two_one_bloc.dart';

/// Represents the state of CollectionTwoOne in the application.
class CollectionTwoOneState extends Equatable {
  CollectionTwoOneState({this.collectionTwoOneModelObj});

  CollectionTwoOneModel? collectionTwoOneModelObj;

  @override
  List<Object?> get props => [
        collectionTwoOneModelObj,
      ];
  CollectionTwoOneState copyWith(
      {CollectionTwoOneModel? collectionTwoOneModelObj}) {
    return CollectionTwoOneState(
      collectionTwoOneModelObj:
          collectionTwoOneModelObj ?? this.collectionTwoOneModelObj,
    );
  }
}
