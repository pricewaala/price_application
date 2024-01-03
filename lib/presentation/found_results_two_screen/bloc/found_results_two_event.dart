// ignore_for_file: must_be_immutable

part of 'found_results_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FoundResultsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FoundResultsTwoEvent extends Equatable {}

/// Event that is dispatched when the FoundResultsTwo widget is first created.
class FoundResultsTwoInitialEvent extends FoundResultsTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FoundResultsTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
