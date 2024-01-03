// ignore_for_file: must_be_immutable

part of 'collection_one_two_bloc.dart';

/// Represents the state of CollectionOneTwo in the application.
class CollectionOneTwoState extends Equatable {
  CollectionOneTwoState({this.collectionOneTwoModelObj});

  CollectionOneTwoModel? collectionOneTwoModelObj;

  @override
  List<Object?> get props => [
        collectionOneTwoModelObj,
      ];
  CollectionOneTwoState copyWith(
      {CollectionOneTwoModel? collectionOneTwoModelObj}) {
    return CollectionOneTwoState(
      collectionOneTwoModelObj:
          collectionOneTwoModelObj ?? this.collectionOneTwoModelObj,
    );
  }
}
