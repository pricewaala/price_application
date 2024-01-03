// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'creditcard_item_model.dart';/// This class defines the variables used in the [new_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewCardModel extends Equatable {NewCardModel({this.creditcardItemList = const []}) {  }

List<CreditcardItemModel> creditcardItemList;

NewCardModel copyWith({List<CreditcardItemModel>? creditcardItemList}) { return NewCardModel(
creditcardItemList : creditcardItemList ?? this.creditcardItemList,
); } 
@override List<Object?> get props => [creditcardItemList];
 }
