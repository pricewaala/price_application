import '../../../core/app_export.dart';/// This class is used in the [userprofile11_item_widget] screen.
class Userprofile11ItemModel {Userprofile11ItemModel({this.image, this.settingsImage, this.text1, this.text2, this.text3, this.text4, this.cardholderName, this.validThru, this.userName, this.expiryDate, this.id, }) { image = image  ?? ImageConstant.imgMap;settingsImage = settingsImage  ?? ImageConstant.imgSettingsWhiteA700;text1 = text1  ?? "4364";text2 = text2  ?? "1345 ";text3 = text3  ?? "8932";text4 = text4  ?? "8378";cardholderName = cardholderName  ?? "CARDHOLDER NAME";validThru = validThru  ?? "VALID THRU";userName = userName  ?? "Sunie Pham";expiryDate = expiryDate  ?? "05/24";id = id  ?? ""; }

String? image;

String? settingsImage;

String? text1;

String? text2;

String? text3;

String? text4;

String? cardholderName;

String? validThru;

String? userName;

String? expiryDate;

String? id;

 }
