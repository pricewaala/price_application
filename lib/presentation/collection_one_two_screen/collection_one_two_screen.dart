import '../collection_one_two_screen/widgets/collectiononetwostack_item_widget.dart';
import 'bloc/collection_one_two_bloc.dart';
import 'models/collection_one_two_model.dart';
import 'models/collectiononetwostack_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CollectionOneTwoScreen extends StatelessWidget {
  const CollectionOneTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollectionOneTwoBloc>(
      create: (context) => CollectionOneTwoBloc(CollectionOneTwoState(
        collectionOneTwoModelObj: CollectionOneTwoModel(),
      ))
        ..add(CollectionOneTwoInitialEvent()),
      child: CollectionOneTwoScreen(),
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
                      color: appTheme.gray90005,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Container(
                        height: 609.v,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 26.v),
                        decoration: AppDecoration.fillGray90005.copyWith(
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
                              buttonStyle: CustomButtonStyles.fillGrayTL151,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumGray90005_1,
                              alignment: Alignment.bottomRight,
                            ),
                            _buildCollectionOneTwoStack(context),
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
                padding: EdgeInsets.only(top: 17.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 58.v),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftGray90005,
                        ),
                      ),
                    ),
                    Container(
                      width: 116.h,
                      margin: EdgeInsets.only(left: 168.h),
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
  Widget _buildCollectionOneTwoStack(BuildContext context) {
    return BlocSelector<CollectionOneTwoBloc, CollectionOneTwoState,
        CollectionOneTwoModel?>(
      selector: (state) => state.collectionOneTwoModelObj,
      builder: (context, collectionOneTwoModelObj) {
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
              collectionOneTwoModelObj?.collectiononetwostackItemList.length ??
                  0,
          itemBuilder: (context, index) {
            CollectiononetwostackItemModel model = collectionOneTwoModelObj
                    ?.collectiononetwostackItemList[index] ??
                CollectiononetwostackItemModel();
            return CollectiononetwostackItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
