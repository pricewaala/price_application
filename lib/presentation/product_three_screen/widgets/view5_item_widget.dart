import '../models/view5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class View5ItemWidget extends StatelessWidget {
  View5ItemWidget(
    this.view5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  View5ItemModel view5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 34.v),
            Opacity(
              opacity: 0.2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 234.adaptSize,
                  width: 234.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.deepOrange1006c,
                    borderRadius: BorderRadius.circular(
                      117.h,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 57.v),
            CustomImageView(
              imagePath: ImageConstant.imgSettingsGray80008,
              height: 10.v,
              width: 41.h,
            ),
          ],
        ),
      ),
    );
  }
}
