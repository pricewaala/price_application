import '../collection_one_one_screen/widgets/collectiononeonestaggered_item_widget.dart';
import 'bloc/collection_one_one_bloc.dart';
import 'models/collection_one_one_model.dart';
import 'models/collectiononeonestaggered_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CollectionOneOneScreen extends StatelessWidget {
  const CollectionOneOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollectionOneOneBloc>(
      create: (context) => CollectionOneOneBloc(CollectionOneOneState(
        collectionOneOneModelObj: CollectionOneOneModel(),
      ))
        ..add(CollectionOneOneInitialEvent()),
      child: CollectionOneOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 777.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildArrowLeftStack(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Container(
                        height: 609.v,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 26.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder30,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomElevatedButton(
                              height: 52.v,
                              width: 151.h,
                              text: "lbl_view_all".tr,
                              margin: EdgeInsets.only(bottom: 10.v),
                              buttonStyle: CustomButtonStyles.fillBlackTL151,
                              alignment: Alignment.bottomRight,
                            ),
                            _buildCollectionOneOneStaggered(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 212.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShutterstock1781009285212x375,
              height: 212.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 14.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 62.v),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftWhiteA700,
                        ),
                      ),
                    ),
                    Container(
                      width: 116.h,
                      margin: EdgeInsets.only(
                        left: 169.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "msg_autumn_collection_2021".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleLargeProductSansBold.copyWith(
                          height: 1.41,
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
    );
  }

  /// Section Widget
  Widget _buildCollectionOneOneStaggered(BuildContext context) {
    return BlocSelector<CollectionOneOneBloc, CollectionOneOneState,
        CollectionOneOneModel?>(
      selector: (state) => state.collectionOneOneModelObj,
      builder: (context, collectionOneOneModelObj) {
        return StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 2,
          crossAxisSpacing: 334.h,
          mainAxisSpacing: 334.h,
          staggeredTileBuilder: (index) {
            return StaggeredTile.fit(2);
          },
          itemCount: collectionOneOneModelObj
                  ?.collectiononeonestaggeredItemList.length ??
              0,
          itemBuilder: (context, index) {
            CollectiononeonestaggeredItemModel model = collectionOneOneModelObj
                    ?.collectiononeonestaggeredItemList[index] ??
                CollectiononeonestaggeredItemModel();
            return CollectiononeonestaggeredItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
