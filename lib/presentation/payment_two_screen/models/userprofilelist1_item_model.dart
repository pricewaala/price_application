import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.image, this.settingsImage, this.text1, this.text2, this.text3, this.text4, this.price, this.cardholderName, this.text6, this.validThru, this.id, }) { image = image  ?? ImageConstant.imgMap;settingsImage = settingsImage  ?? ImageConstant.imgSettingsWhiteA700;text1 = text1  ?? "4364";text2 = text2  ?? "1345 ";text3 = text3  ?? "8932";text4 = text4  ?? "8378";price = price  ?? "CARDHOLDER NAME";cardholderName = cardholderName  ?? "Sunie Pham";text6 = text6  ?? "VALID THRU";validThru = validThru  ?? "05/24";id = id  ?? ""; }

String? image;

String? settingsImage;

String? text1;

String? text2;

String? text3;

String? text4;

String? price;

String? cardholderName;

String? text6;

String? validThru;

String? id;

 }
