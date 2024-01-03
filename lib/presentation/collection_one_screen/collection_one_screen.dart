import '../collection_one_screen/widgets/collectiononestaggered_item_widget.dart';
import 'bloc/collection_one_bloc.dart';
import 'models/collection_one_model.dart';
import 'models/collectiononestaggered_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CollectionOneScreen extends StatelessWidget {
  const CollectionOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollectionOneBloc>(
      create: (context) => CollectionOneBloc(CollectionOneState(
        collectionOneModelObj: CollectionOneModel(),
      ))
        ..add(CollectionOneInitialEvent()),
      child: CollectionOneScreen(),
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
                  _buildTwentyOneStack(context),
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
                            _buildCollectionOneStaggered(context),
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
  Widget _buildTwentyOneStack(BuildContext context) {
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
  Widget _buildCollectionOneStaggered(BuildContext context) {
    return BlocSelector<CollectionOneBloc, CollectionOneState,
        CollectionOneModel?>(
      selector: (state) => state.collectionOneModelObj,
      builder: (context, collectionOneModelObj) {
        return StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 2,
          crossAxisSpacing: 334.h,
          mainAxisSpacing: 334.h,
          staggeredTileBuilder: (index) {
            return StaggeredTile.fit(2);
          },
          itemCount:
              collectionOneModelObj?.collectiononestaggeredItemList.length ?? 0,
          itemBuilder: (context, index) {
            CollectiononestaggeredItemModel model =
                collectionOneModelObj?.collectiononestaggeredItemList[index] ??
                    CollectiononestaggeredItemModel();
            return CollectiononestaggeredItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
