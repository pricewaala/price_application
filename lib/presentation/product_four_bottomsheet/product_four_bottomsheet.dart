import 'bloc/product_four_bloc.dart';
import 'models/product_four_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProductFourBottomsheet extends StatelessWidget {
  const ProductFourBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductFourBloc>(
      create: (context) => ProductFourBloc(ProductFourState(
        productFourModelObj: ProductFourModel(),
      ))
        ..add(ProductFourInitialEvent()),
      child: ProductFourBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 117.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.fillGray5006.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBagGray90005,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "lbl_add_to_cart".tr,
                    style: CustomTextStyles.titleMediumGray90005,
                  ),
                ),
              ],
            ),
            SizedBox(height: 13.v),
            SizedBox(
              width: 87.h,
              child: Divider(
                color: appTheme.gray90005,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                color: appTheme.gray5006,
                indent: 19.h,
                endIndent: 9.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
