import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/track_order_two_screen/models/track_order_two_model.dart';
part 'track_order_two_event.dart';
part 'track_order_two_state.dart';

/// A bloc that manages the state of a TrackOrderTwo according to the event that is dispatched to it.
class TrackOrderTwoBloc extends Bloc<TrackOrderTwoEvent, TrackOrderTwoState> {
  TrackOrderTwoBloc(TrackOrderTwoState initialState) : super(initialState) {
    on<TrackOrderTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrackOrderTwoInitialEvent event,
    Emitter<TrackOrderTwoState> emit,
  ) async {}
}
