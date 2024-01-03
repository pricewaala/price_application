import '../../../core/app_export.dart';/// This class is used in the [creditcard2_item_widget] screen.
class Creditcard2ItemModel {Creditcard2ItemModel({this.cardImage, this.cardImage1, this.image, this.threeThousandSixHundredThirtyTwo, this.cardNumber, this.cardNumber1, this.cardNumber2, this.cardNumber3, this.price, this.cardHolderName, this.validThru, this.validThru1, this.id, }) { cardImage = cardImage  ?? ImageConstant.imgCard;cardImage1 = cardImage1  ?? ImageConstant.imgShape14x13;image = image  ?? ImageConstant.imgImage47;threeThousandSixHundredThirtyTwo = threeThousandSixHundredThirtyTwo  ?? ImageConstant.imgShape35x35;cardNumber = cardNumber  ?? "5412";cardNumber1 = cardNumber1  ?? "3632 ";cardNumber2 = cardNumber2  ?? "7283";cardNumber3 = cardNumber3  ?? "7284";price = price  ?? "CARDHOLDER NAME";cardHolderName = cardHolderName  ?? "Sunie Pham";validThru = validThru  ?? "VALID THRU";validThru1 = validThru1  ?? "03/23";id = id  ?? ""; }

String? cardImage;

String? cardImage1;

String? image;

String? threeThousandSixHundredThirtyTwo;

String? cardNumber;

String? cardNumber1;

String? cardNumber2;

String? cardNumber3;

String? price;

String? cardHolderName;

String? validThru;

String? validThru1;

String? id;

 }
