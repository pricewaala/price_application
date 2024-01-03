// ignore_for_file: must_be_immutable

part of 'collection_two_two_bloc.dart';

/// Represents the state of CollectionTwoTwo in the application.
class CollectionTwoTwoState extends Equatable {
  CollectionTwoTwoState({this.collectionTwoTwoModelObj});

  CollectionTwoTwoModel? collectionTwoTwoModelObj;

  @override
  List<Object?> get props => [
        collectionTwoTwoModelObj,
      ];
  CollectionTwoTwoState copyWith(
      {CollectionTwoTwoModel? collectionTwoTwoModelObj}) {
    return CollectionTwoTwoState(
      collectionTwoTwoModelObj:
          collectionTwoTwoModelObj ?? this.collectionTwoTwoModelObj,
    );
  }
}
