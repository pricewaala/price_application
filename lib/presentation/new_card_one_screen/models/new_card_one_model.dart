// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'creditcard2_item_model.dart';/// This class defines the variables used in the [new_card_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewCardOneModel extends Equatable {NewCardOneModel({this.creditcard2ItemList = const []}) {  }

List<Creditcard2ItemModel> creditcard2ItemList;

NewCardOneModel copyWith({List<Creditcard2ItemModel>? creditcard2ItemList}) { return NewCardOneModel(
creditcard2ItemList : creditcard2ItemList ?? this.creditcard2ItemList,
); } 
@override List<Object?> get props => [creditcard2ItemList];
 }
