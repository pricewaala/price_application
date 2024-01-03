import '../models/recentsearch2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Recentsearch2ItemWidget extends StatelessWidget {
  Recentsearch2ItemWidget(
    this.recentsearch2ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Recentsearch2ItemModel recentsearch2ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 22.h,
        top: 8.v,
        bottom: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        recentsearch2ItemModelObj.recentSearch!,
        style: TextStyle(
          color: appTheme.blueGray90004.withOpacity(0.7),
          fontSize: 16.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 21.adaptSize,
        width: 21.adaptSize,
        margin: EdgeInsets.only(left: 21.h),
      ),
      onDeleted: () {},
      selected: (recentsearch2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray5007,
      selectedColor: appTheme.gray5007,
      shape: (recentsearch2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray90004.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
