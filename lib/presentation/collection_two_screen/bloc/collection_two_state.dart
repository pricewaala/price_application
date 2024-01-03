// ignore_for_file: must_be_immutable

part of 'collection_two_bloc.dart';

/// Represents the state of CollectionTwo in the application.
class CollectionTwoState extends Equatable {
  CollectionTwoState({this.collectionTwoModelObj});

  CollectionTwoModel? collectionTwoModelObj;

  @override
  List<Object?> get props => [
        collectionTwoModelObj,
      ];
  CollectionTwoState copyWith({CollectionTwoModel? collectionTwoModelObj}) {
    return CollectionTwoState(
      collectionTwoModelObj:
          collectionTwoModelObj ?? this.collectionTwoModelObj,
    );
  }
}
