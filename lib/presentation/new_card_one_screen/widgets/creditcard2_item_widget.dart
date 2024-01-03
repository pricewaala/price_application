import '../models/creditcard2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Creditcard2ItemWidget extends StatelessWidget {
  Creditcard2ItemWidget(
    this.creditcard2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Creditcard2ItemModel creditcard2ItemModelObj;

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
                                imagePath: creditcard2ItemModelObj?.cardImage,
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
                                imagePath: creditcard2ItemModelObj?.cardImage1,
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
                                imagePath: creditcard2ItemModelObj?.image,
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
                                        imagePath: creditcard2ItemModelObj
                                            ?.threeThousandSixHundredThirtyTwo,
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
                                              creditcard2ItemModelObj
                                                  .cardNumber!,
                                              style: theme.textTheme.titleLarge,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Text(
                                                creditcard2ItemModelObj
                                                    .cardNumber1!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                creditcard2ItemModelObj
                                                    .cardNumber2!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Text(
                                                creditcard2ItemModelObj
                                                    .cardNumber3!,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20.v),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                creditcard2ItemModelObj.price!,
                                                style:
                                                    theme.textTheme.labelSmall,
                                              ),
                                              SizedBox(height: 4.v),
                                              Text(
                                                creditcard2ItemModelObj
                                                    .cardHolderName!,
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
                                                  creditcard2ItemModelObj
                                                      .validThru!,
                                                  style: theme
                                                      .textTheme.labelSmall,
                                                ),
                                                SizedBox(height: 4.v),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    creditcard2ItemModelObj
                                                        .validThru1!,
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
