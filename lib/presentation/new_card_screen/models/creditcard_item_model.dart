import '../../../core/app_export.dart';/// This class is used in the [creditcard_item_widget] screen.
class CreditcardItemModel {CreditcardItemModel({this.image1, this.shapeImage, this.image4, this.image5, this.cardNumberText1, this.cardNumberText2, this.cardNumberText3, this.cardNumberText4, this.cardholderNameText1, this.cardholderNameTextValue, this.validThruTextValue, this.validThruText, this.id, }) { image1 = image1  ?? ImageConstant.imgCard;shapeImage = shapeImage  ?? ImageConstant.imgShape14x13;image4 = image4  ?? ImageConstant.imgImage47;image5 = image5  ?? ImageConstant.imgShape35x35;cardNumberText1 = cardNumberText1  ?? "5412";cardNumberText2 = cardNumberText2  ?? "3632 ";cardNumberText3 = cardNumberText3  ?? "7283";cardNumberText4 = cardNumberText4  ?? "7284";cardholderNameText1 = cardholderNameText1  ?? "CARDHOLDER NAME";cardholderNameTextValue = cardholderNameTextValue  ?? "Sunie Pham";validThruTextValue = validThruTextValue  ?? "VALID THRU";validThruText = validThruText  ?? "03/23";id = id  ?? ""; }

String? image1;

String? shapeImage;

String? image4;

String? image5;

String? cardNumberText1;

String? cardNumberText2;

String? cardNumberText3;

String? cardNumberText4;

String? cardholderNameText1;

String? cardholderNameTextValue;

String? validThruTextValue;

String? validThruText;

String? id;

 }
