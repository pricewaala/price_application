import '../models/userprofile8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  Userprofile8ItemWidget(
    this.userprofile8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile8ItemModel userprofile8ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShutterstock1781009285,
            height: 168.v,
            width: 312.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 8.h,
                bottom: 8.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 116.h,
                      child: Text(
                        "msg_autumn_collection_2021".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleLargeProductSansBold.copyWith(
                          height: 1.41,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 10.v,
                    width: 41.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
