import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          frameItemModelObj.lihuaTunicWhite!,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 12.fSize,
            fontFamily: 'Product Sans Medium',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (frameItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
