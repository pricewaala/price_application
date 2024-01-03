import '../models/recentsearch4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Recentsearch4ItemWidget extends StatelessWidget {
  Recentsearch4ItemWidget(
    this.recentsearch4ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Recentsearch4ItemModel recentsearch4ItemModelObj;

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
        recentsearch4ItemModelObj.recentSearch!,
        style: TextStyle(
          color: appTheme.gray200,
          fontSize: 16.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgCloseBlueGray40001,
        height: 21.adaptSize,
        width: 21.adaptSize,
        margin: EdgeInsets.only(left: 20.h),
      ),
      onDeleted: () {},
      selected: (recentsearch4ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray90007,
      selectedColor: appTheme.gray90007,
      shape: (recentsearch4ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray200.withOpacity(0.6),
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
