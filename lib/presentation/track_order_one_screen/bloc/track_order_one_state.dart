// ignore_for_file: must_be_immutable

part of 'track_order_one_bloc.dart';

/// Represents the state of TrackOrderOne in the application.
class TrackOrderOneState extends Equatable {
  TrackOrderOneState({this.trackOrderOneModelObj});

  TrackOrderOneModel? trackOrderOneModelObj;

  @override
  List<Object?> get props => [
        trackOrderOneModelObj,
      ];
  TrackOrderOneState copyWith({TrackOrderOneModel? trackOrderOneModelObj}) {
    return TrackOrderOneState(
      trackOrderOneModelObj:
          trackOrderOneModelObj ?? this.trackOrderOneModelObj,
    );
  }
}
