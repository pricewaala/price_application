import '../models/creditcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Creditcard1ItemWidget extends StatelessWidget {
  Creditcard1ItemWidget(
    this.creditcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Creditcard1ItemModel creditcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 492.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 383.v,
          width: 492.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 163.v,
                  width: 308.h,
                  margin: EdgeInsets.only(
                    top: 24.v,
                    right: 37.h,
                  ),
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
                child: SizedBox(
                  height: 383.v,
                  width: 492.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 191.v,
                          width: 327.h,
                          margin: EdgeInsets.only(right: 28.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              14.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0, 0.5),
                              end: Alignment(1, 0.5),
                              colors: [
                                appTheme.orangeA200,
                                appTheme.amber30002,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 383.v,
                          width: 492.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: creditcard1ItemModelObj?.cardImage1,
                                height: 191.v,
                                width: 327.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(right: 28.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 310.v,
                                width: 492.h,
                                alignment: Alignment.bottomCenter,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 322.v,
                                width: 275.h,
                                alignment: Alignment.topRight,
                              ),
                              CustomImageView(
                                imagePath: creditcard1ItemModelObj?.shapeImage,
                                height: 14.v,
                                width: 13.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 14.v,
                                  right: 167.h,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 309.v,
                                width: 368.h,
                                alignment: Alignment.centerRight,
                              ),
                              CustomImageView(
                                imagePath: creditcard1ItemModelObj?.image,
                                height: 48.v,
                                width: 61.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 12.v,
                                  right: 47.h,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 38.v,
                                    right: 44.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            creditcard1ItemModelObj?.image1,
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        margin: EdgeInsets.only(left: 56.h),
                                      ),
                                      SizedBox(height: 28.v),
                                      Padding(
                                        padding: EdgeInsets.only(right: 16.h),
                                        child: Row(
                                          children: [
                                            Text(
                                              creditcard1ItemModelObj
                                                  .cardNumberText1!,
                                              style: theme.textTheme.titleLarge,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Text(
                                                creditcard1ItemModelObj
                                                    .cardNumberText2!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                creditcard1ItemModelObj
                                                    .cardNumberText3!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Text(
                                                creditcard1ItemModelObj
                                                    .cardNumberText4!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 21.v),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                creditcard1ItemModelObj
                                                    .cardholderNameLabel!,
                                                style:
                                                    theme.textTheme.labelSmall,
                                              ),
                                              SizedBox(height: 4.v),
                                              Text(
                                                creditcard1ItemModelObj
                                                    .cardholderNameText!,
                                                style: CustomTextStyles
                                                    .labelMedium_1,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 120.h),
                                            child: Column(
                                              children: [
                                                Text(
                                                  creditcard1ItemModelObj
                                                      .validThruText!,
                                                  style: theme
                                                      .textTheme.labelSmall,
                                                ),
                                                SizedBox(height: 4.v),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    creditcard1ItemModelObj
                                                        .validThruLabel!,
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
