import '../models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillGray50003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 46.v,
                      bottom: 40.v,
                    ),
                    child: Text(
                      userprofile9ItemModelObj.clothing!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.fillGray40001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder50,
                    ),
                    child: Container(
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray40001,
                        borderRadius: BorderRadius.circular(
                          37.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: userprofile9ItemModelObj?.clothing1,
            height: 126.v,
            width: 123.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
