import '../models/discover_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class DiscoverItemWidget extends StatelessWidget {
  DiscoverItemWidget(
    this.discoverItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscoverItemModel discoverItemModelObj;

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
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillGray50003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Container(
                    margin: EdgeInsets.only(left: 164.h),
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
            imagePath: discoverItemModelObj?.image,
            height: 126.v,
            width: 123.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
