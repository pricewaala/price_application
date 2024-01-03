import '../models/signal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SignalItemWidget extends StatelessWidget {
  SignalItemWidget(
    this.signalItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  SignalItemModel signalItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          left: 10.h,
          top: 11.v,
          bottom: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          signalItemModelObj.signal!,
          style: TextStyle(
            color: (signalItemModelObj.isSelected ?? false)
                ? appTheme.gray90005
                : appTheme.gray5006,
            fontSize: 11.366341590881348.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgSignalGray5006,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.only(),
        ),
        onDeleted: () {},
        selected: (signalItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray5006,
        shape: (signalItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray5006,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  19.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray5006,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  19.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
