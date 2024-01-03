import '../models/banner3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Banner3ItemWidget extends StatelessWidget {
  Banner3ItemWidget(
    this.banner3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Banner3ItemModel banner3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 148.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray90007,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 194.v,
          width: 148.h,
          decoration: AppDecoration.fillGray90007.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 45.h,
                  margin: EdgeInsets.only(
                    right: 19.h,
                    bottom: 57.v,
                  ),
                  child: Text(
                    banner3ItemModelObj.titleText!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyLargeProductSansLightGray5006Light,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 41.v,
                    right: 19.h,
                  ),
                  child: Text(
                    banner3ItemModelObj.tShirtsText!,
                    style: CustomTextStyles.bodyMediumRobotoBluegray200,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: banner3ItemModelObj?.bannerImage,
                height: 194.v,
                width: 87.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
