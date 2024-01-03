import '../collection_two_one_screen/widgets/productcardgrid5_item_widget.dart';
import 'bloc/collection_two_one_bloc.dart';
import 'models/collection_two_one_model.dart';
import 'models/productcardgrid5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

class CollectionTwoOneScreen extends StatelessWidget {
  const CollectionTwoOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollectionTwoOneBloc>(
      create: (context) => CollectionTwoOneBloc(CollectionTwoOneState(
        collectionTwoOneModelObj: CollectionTwoOneModel(),
      ))
        ..add(CollectionTwoOneInitialEvent()),
      child: CollectionTwoOneScreen(),
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
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 31.h,
                        vertical: 11.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 16.v),
                          _buildProductCardGrid(context),
                        ],
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
  Widget _buildProductCardGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<CollectionTwoOneBloc, CollectionTwoOneState,
          CollectionTwoOneModel?>(
        selector: (state) => state.collectionTwoOneModelObj,
        builder: (context, collectionTwoOneModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 255.v,
              crossAxisCount: 2,
              mainAxisSpacing: 30.h,
              crossAxisSpacing: 30.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                collectionTwoOneModelObj?.productcardgrid5ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcardgrid5ItemModel model =
                  collectionTwoOneModelObj?.productcardgrid5ItemList[index] ??
                      Productcardgrid5ItemModel();
              return Productcardgrid5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
