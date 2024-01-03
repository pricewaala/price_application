// ignore_for_file: must_be_immutable

part of 'found_results_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FoundResultsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FoundResultsOneEvent extends Equatable {}

/// Event that is dispatched when the FoundResultsOne widget is first created.
class FoundResultsOneInitialEvent extends FoundResultsOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FoundResultsOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
