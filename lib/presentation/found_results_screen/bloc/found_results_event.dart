// ignore_for_file: must_be_immutable

part of 'found_results_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FoundResults widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FoundResultsEvent extends Equatable {}

/// Event that is dispatched when the FoundResults widget is first created.
class FoundResultsInitialEvent extends FoundResultsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FoundResultsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
