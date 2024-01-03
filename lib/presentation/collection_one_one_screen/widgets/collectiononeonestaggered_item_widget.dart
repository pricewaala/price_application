import '../models/collectiononeonestaggered_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CollectiononeonestaggeredItemWidget extends StatelessWidget {
  CollectiononeonestaggeredItemWidget(
    this.collectiononeonestaggeredItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CollectiononeonestaggeredItemModel collectiononeonestaggeredItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: collectiononeonestaggeredItemModelObj?.image,
        height: 228.v,
        width: 154.h,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}
