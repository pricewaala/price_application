import '../models/collectiononestaggered_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CollectiononestaggeredItemWidget extends StatelessWidget {
  CollectiononestaggeredItemWidget(
    this.collectiononestaggeredItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CollectiononestaggeredItemModel collectiononestaggeredItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: collectiononestaggeredItemModelObj?.image,
        height: 228.v,
        width: 154.h,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}
