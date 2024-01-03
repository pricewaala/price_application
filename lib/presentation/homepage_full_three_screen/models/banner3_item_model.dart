import '../../../core/app_export.dart';/// This class is used in the [banner3_item_widget] screen.
class Banner3ItemModel {Banner3ItemModel({this.titleText, this.tShirtsText, this.bannerImage, this.id, }) { titleText = titleText  ?? "The \nOffice\nLife";tShirtsText = tShirtsText  ?? "T-Shirts";bannerImage = bannerImage  ?? ImageConstant.imgImage72;id = id  ?? ""; }

String? titleText;

String? tShirtsText;

String? bannerImage;

String? id;

 }
