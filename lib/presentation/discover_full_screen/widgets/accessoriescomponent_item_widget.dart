import '../models/accessoriescomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AccessoriescomponentItemWidget extends StatelessWidget {
  AccessoriescomponentItemWidget(
    this.accessoriescomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccessoriescomponentItemModel accessoriescomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                top: 49.v,
              ),
              child: Text(
                accessoriescomponentItemModelObj.accessories!,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              decoration: AppDecoration.fillGray600.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 46.v,
                      bottom: 46.v,
                    ),
                    child: Text(
                      accessoriescomponentItemModelObj.accessories1!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    height: 108.v,
                    width: 151.h,
                    margin: EdgeInsets.only(top: 3.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 5.h),
                            padding: EdgeInsets.all(10.h),
                            decoration: AppDecoration.fillGray50006.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder50,
                            ),
                            child: Container(
                              height: 85.adaptSize,
                              width: 85.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.gray50006,
                                borderRadius: BorderRadius.circular(
                                  42.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              accessoriescomponentItemModelObj?.accessories2,
                          height: 106.v,
                          width: 151.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
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
