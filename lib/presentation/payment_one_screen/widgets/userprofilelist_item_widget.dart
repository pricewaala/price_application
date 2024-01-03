import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 163.v,
              width: 308.h,
              decoration: BoxDecoration(
                color: appTheme.gray50001,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Container(
                height: 191.v,
                width: 327.h,
                decoration: AppDecoration.gradientBlueToIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: CustomImageView(
                        imagePath: userprofilelistItemModelObj?.image,
                        height: 191.v,
                        width: 327.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath:
                                  userprofilelistItemModelObj?.settingsImage,
                              height: 20.v,
                              width: 61.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 3.h),
                            ),
                            SizedBox(height: 45.v),
                            Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    userprofilelistItemModelObj.text1!,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Text(
                                    userprofilelistItemModelObj.text2!,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Text(
                                    userprofilelistItemModelObj.text3!,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Text(
                                    userprofilelistItemModelObj.text4!,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      userprofilelistItemModelObj.price!,
                                      style: theme.textTheme.labelSmall,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      userprofilelistItemModelObj
                                          .cardholderName!,
                                      style: CustomTextStyles.labelMedium_1,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      userprofilelistItemModelObj.text6!,
                                      style: theme.textTheme.labelSmall,
                                    ),
                                    SizedBox(height: 4.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        userprofilelistItemModelObj.validThru!,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
