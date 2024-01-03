// ignore_for_file: must_be_immutable

part of 'track_order_two_bloc.dart';

/// Represents the state of TrackOrderTwo in the application.
class TrackOrderTwoState extends Equatable {
  TrackOrderTwoState({this.trackOrderTwoModelObj});

  TrackOrderTwoModel? trackOrderTwoModelObj;

  @override
  List<Object?> get props => [
        trackOrderTwoModelObj,
      ];
  TrackOrderTwoState copyWith({TrackOrderTwoModel? trackOrderTwoModelObj}) {
    return TrackOrderTwoState(
      trackOrderTwoModelObj:
          trackOrderTwoModelObj ?? this.trackOrderTwoModelObj,
    );
  }
}
