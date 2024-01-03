// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'creditcard1_item_model.dart';/// This class defines the variables used in the [new_card_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewCardTwoModel extends Equatable {NewCardTwoModel({this.creditcard1ItemList = const []}) {  }

List<Creditcard1ItemModel> creditcard1ItemList;

NewCardTwoModel copyWith({List<Creditcard1ItemModel>? creditcard1ItemList}) { return NewCardTwoModel(
creditcard1ItemList : creditcard1ItemList ?? this.creditcard1ItemList,
); } 
@override List<Object?> get props => [creditcard1ItemList];
 }
