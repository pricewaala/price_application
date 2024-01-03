import '../models/userprofile14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile14ItemWidget extends StatelessWidget {
  Userprofile14ItemWidget(
    this.userprofile14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile14ItemModel userprofile14ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 192.v,
        width: 327.h,
        margin: EdgeInsets.only(right: 25.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 163.v,
                width: 308.h,
                decoration: BoxDecoration(
                  color: appTheme.gray60001,
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
                          imagePath: userprofile14ItemModelObj?.mapImage,
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
                            children: [
                              CustomImageView(
                                imagePath:
                                    userprofile14ItemModelObj?.settingsImage,
                                height: 20.v,
                                width: 61.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 3.h),
                              ),
                              SizedBox(height: 45.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        userprofile14ItemModelObj.text1!,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                      Text(
                                        userprofile14ItemModelObj.text2!,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                      Text(
                                        userprofile14ItemModelObj.text3!,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                      Text(
                                        userprofile14ItemModelObj.text4!,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    userprofile14ItemModelObj
                                        .cardholderNameText!,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                  Text(
                                    userprofile14ItemModelObj.validThruText!,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    userprofile14ItemModelObj.userNameText!,
                                    style: CustomTextStyles.labelMedium_1,
                                  ),
                                  Text(
                                    userprofile14ItemModelObj.expiryDateText!,
                                    style: theme.textTheme.labelMedium,
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
      ),
    );
  }
}
