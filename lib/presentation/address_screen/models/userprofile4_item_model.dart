import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.editImage, this.userImage, this.sendToText, this.myOfficeText, this.editText, this.addressText, this.id, }) { editImage = editImage  ?? ImageConstant.imgContrastBlack900;userImage = userImage  ?? ImageConstant.imgUserGray80001;sendToText = sendToText  ?? "SEND TO";myOfficeText = myOfficeText  ?? "My Office";editText = editText  ?? "Edit";addressText = addressText  ?? "SBI Building, street 3, Software Park";id = id  ?? ""; }

String? editImage;

String? userImage;

String? sendToText;

String? myOfficeText;

String? editText;

String? addressText;

String? id;

 }
