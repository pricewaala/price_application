// ignore_for_file: must_be_immutable

part of 'collection_one_bloc.dart';

/// Represents the state of CollectionOne in the application.
class CollectionOneState extends Equatable {
  CollectionOneState({this.collectionOneModelObj});

  CollectionOneModel? collectionOneModelObj;

  @override
  List<Object?> get props => [
        collectionOneModelObj,
      ];
  CollectionOneState copyWith({CollectionOneModel? collectionOneModelObj}) {
    return CollectionOneState(
      collectionOneModelObj:
          collectionOneModelObj ?? this.collectionOneModelObj,
    );
  }
}
