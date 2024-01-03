// ignore_for_file: must_be_immutable

part of 'collection_one_one_bloc.dart';

/// Represents the state of CollectionOneOne in the application.
class CollectionOneOneState extends Equatable {
  CollectionOneOneState({this.collectionOneOneModelObj});

  CollectionOneOneModel? collectionOneOneModelObj;

  @override
  List<Object?> get props => [
        collectionOneOneModelObj,
      ];
  CollectionOneOneState copyWith(
      {CollectionOneOneModel? collectionOneOneModelObj}) {
    return CollectionOneOneState(
      collectionOneOneModelObj:
          collectionOneOneModelObj ?? this.collectionOneOneModelObj,
    );
  }
}
