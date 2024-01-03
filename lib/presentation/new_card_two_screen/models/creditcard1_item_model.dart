import '../../../core/app_export.dart';/// This class is used in the [creditcard1_item_widget] screen.
class Creditcard1ItemModel {Creditcard1ItemModel({this.cardImage1, this.shapeImage, this.image, this.image1, this.cardNumberText1, this.cardNumberText2, this.cardNumberText3, this.cardNumberText4, this.cardholderNameLabel, this.cardholderNameText, this.validThruText, this.validThruLabel, this.id, }) { cardImage1 = cardImage1  ?? ImageConstant.imgCard;shapeImage = shapeImage  ?? ImageConstant.imgShape14x13;image = image  ?? ImageConstant.imgImage47;image1 = image1  ?? ImageConstant.imgShape35x35;cardNumberText1 = cardNumberText1  ?? "5412";cardNumberText2 = cardNumberText2  ?? "3632 ";cardNumberText3 = cardNumberText3  ?? "7283";cardNumberText4 = cardNumberText4  ?? "7284";cardholderNameLabel = cardholderNameLabel  ?? "CARDHOLDER NAME";cardholderNameText = cardholderNameText  ?? "Sunie Pham";validThruText = validThruText  ?? "VALID THRU";validThruLabel = validThruLabel  ?? "03/23";id = id  ?? ""; }

String? cardImage1;

String? shapeImage;

String? image;

String? image1;

String? cardNumberText1;

String? cardNumberText2;

String? cardNumberText3;

String? cardNumberText4;

String? cardholderNameLabel;

String? cardholderNameText;

String? validThruText;

String? validThruLabel;

String? id;

 }
