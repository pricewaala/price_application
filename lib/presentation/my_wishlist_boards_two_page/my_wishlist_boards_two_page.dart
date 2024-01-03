import '../my_wishlist_boards_two_page/widgets/miscimagecopy2_item_widget.dart';
import 'bloc/my_wishlist_boards_two_bloc.dart';
import 'models/miscimagecopy2_item_model.dart';
import 'models/my_wishlist_boards_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyWishlistBoardsTwoPage extends StatefulWidget {
  const MyWishlistBoardsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistBoardsTwoPageState createState() => MyWishlistBoardsTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistBoardsTwoBloc>(
      create: (context) => MyWishlistBoardsTwoBloc(MyWishlistBoardsTwoState(
        myWishlistBoardsTwoModelObj: MyWishlistBoardsTwoModel(),
      ))
        ..add(MyWishlistBoardsTwoInitialEvent()),
      child: MyWishlistBoardsTwoPage(),
    );
  }
}

class MyWishlistBoardsTwoPageState extends State<MyWishlistBoardsTwoPage>
    with AutomaticKeepAliveClientMixin<MyWishlistBoardsTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Column(
                    children: [
                      _buildWishlistBoard(context),
                      SizedBox(height: 29.v),
                      _buildGoingOutOut2(context),
                      SizedBox(height: 14.v),
                      Divider(
                        color: appTheme.gray80001,
                      ),
                      SizedBox(height: 29.v),
                      _buildWidget3(context),
                      SizedBox(height: 13.v),
                      _buildGoingOutOut(
                        context,
                        dynamicText: "lbl_party_fashion".tr,
                      ),
                      SizedBox(height: 3.v),
                      BlocSelector<MyWishlistBoardsTwoBloc,
                          MyWishlistBoardsTwoState, TextEditingController?>(
                        selector: (state) => state.itemsController,
                        builder: (context, itemsController) {
                          return CustomTextFormField(
                            controller: itemsController,
                            hintText: "lbl_20t_items".tr,
                            hintStyle: CustomTextStyles
                                .bodySmallProductSansLightGray200_1,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray3,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWishlistBoard(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 1.h),
              decoration: AppDecoration.fillGray90005.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 149.v,
                    width: 106.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage149x106,
                    height: 149.v,
                    width: 106.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage85x53,
                        height: 85.v,
                        width: 53.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage59x53,
                        height: 59.v,
                        width: 53.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                    ],
                  ),
                  _buildWidget(
                    context,
                    image1: ImageConstant.imgImage56x51,
                    image2: ImageConstant.imgImage88x51,
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.v),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGoingOutOut(
                  context,
                  dynamicText: "msg_going_out_outfits".tr,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_36_items2".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray200Light,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 13.v),
        Divider(
          color: appTheme.gray80001,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoingOutOut2(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 149.v,
          decoration: AppDecoration.fillGray90005.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: BlocSelector<MyWishlistBoardsTwoBloc, MyWishlistBoardsTwoState,
              MyWishlistBoardsTwoModel?>(
            selector: (state) => state.myWishlistBoardsTwoModelObj,
            builder: (context, myWishlistBoardsTwoModelObj) {
              return ListView.separated(
                padding: EdgeInsets.only(right: 1.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 4.h,
                  );
                },
                itemCount: myWishlistBoardsTwoModelObj
                        ?.miscimagecopy2ItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  Miscimagecopy2ItemModel model = myWishlistBoardsTwoModelObj
                          ?.miscimagecopy2ItemList[index] ??
                      Miscimagecopy2ItemModel();
                  return Miscimagecopy2ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 13.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_office_fashion".tr,
                  style: CustomTextStyles.titleLargeProductSansGray5006,
                ),
                SizedBox(height: 6.v),
                Text(
                  "lbl_20t_items".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray200,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 21.v,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget3(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray90005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 149.v,
            width: 106.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 149.v,
            width: 106.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage11,
                height: 85.v,
                width: 53.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                height: 59.v,
                width: 53.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage59x53,
                      height: 59.v,
                      width: 53.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 59.v,
                      width: 53.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildWidget(
            context,
            image1: ImageConstant.imgImage12,
            image2: ImageConstant.imgImage8,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image1,
          height: 56.v,
          width: 51.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(height: 4.v),
        CustomImageView(
          imagePath: image2,
          height: 88.v,
          width: 51.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildGoingOutOut(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleLargeProductSansGray5006.copyWith(
            color: appTheme.gray5006,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightGray200,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }
}
