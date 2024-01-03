// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard15_item_model.dart';/// This class defines the variables used in the [homepage_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTwoModel extends Equatable {HomepageTwoModel({this.productcard15ItemList = const []}) {  }

List<Productcard15ItemModel> productcard15ItemList;

HomepageTwoModel copyWith({List<Productcard15ItemModel>? productcard15ItemList}) { return HomepageTwoModel(
productcard15ItemList : productcard15ItemList ?? this.productcard15ItemList,
); } 
@override List<Object?> get props => [productcard15ItemList];
 }
