import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/track_order_one_screen/models/track_order_one_model.dart';
part 'track_order_one_event.dart';
part 'track_order_one_state.dart';

/// A bloc that manages the state of a TrackOrderOne according to the event that is dispatched to it.
class TrackOrderOneBloc extends Bloc<TrackOrderOneEvent, TrackOrderOneState> {
  TrackOrderOneBloc(TrackOrderOneState initialState) : super(initialState) {
    on<TrackOrderOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrackOrderOneInitialEvent event,
    Emitter<TrackOrderOneState> emit,
  ) async {}
}
