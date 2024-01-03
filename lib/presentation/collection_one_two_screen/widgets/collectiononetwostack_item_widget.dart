import '../models/collectiononetwostack_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CollectiononetwostackItemWidget extends StatelessWidget {
  CollectiononetwostackItemWidget(
    this.collectiononetwostackItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CollectiononetwostackItemModel collectiononetwostackItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: collectiononetwostackItemModelObj?.image,
        height: 228.v,
        width: 154.h,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}
