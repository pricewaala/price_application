import '../collection_two_two_screen/widgets/productcardgrid7_item_widget.dart';
import 'bloc/collection_two_two_bloc.dart';
import 'models/collection_two_two_model.dart';
import 'models/productcardgrid7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

class CollectionTwoTwoScreen extends StatelessWidget {
  const CollectionTwoTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollectionTwoTwoBloc>(
      create: (context) => CollectionTwoTwoBloc(CollectionTwoTwoState(
        collectionTwoTwoModelObj: CollectionTwoTwoModel(),
      ))
        ..add(CollectionTwoTwoInitialEvent()),
      child: CollectionTwoTwoScreen(),
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
                  _buildProductCardGrid(context),
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
  Widget _buildProductCardGrid(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.fillGray90005.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        margin: EdgeInsets.only(top: 181.v),
        child: BlocSelector<CollectionTwoTwoBloc, CollectionTwoTwoState,
            CollectionTwoTwoModel?>(
          selector: (state) => state.collectionTwoTwoModelObj,
          builder: (context, collectionTwoTwoModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 255.v,
                crossAxisCount: 2,
                mainAxisSpacing: 0.h,
                crossAxisSpacing: 0.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  collectionTwoTwoModelObj?.productcardgrid7ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Productcardgrid7ItemModel model =
                    collectionTwoTwoModelObj?.productcardgrid7ItemList[index] ??
                        Productcardgrid7ItemModel();
                return Productcardgrid7ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
