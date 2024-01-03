// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'paymentmethod_item_model.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [check_out_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutTwoModel extends Equatable {CheckOutTwoModel({this.paymentmethodItemList = const [], this.userprofile1ItemList = const [], }) {  }

List<PaymentmethodItemModel> paymentmethodItemList;

List<Userprofile1ItemModel> userprofile1ItemList;

CheckOutTwoModel copyWith({List<PaymentmethodItemModel>? paymentmethodItemList, List<Userprofile1ItemModel>? userprofile1ItemList, }) { return CheckOutTwoModel(
paymentmethodItemList : paymentmethodItemList ?? this.paymentmethodItemList,
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [paymentmethodItemList,userprofile1ItemList];
 }
