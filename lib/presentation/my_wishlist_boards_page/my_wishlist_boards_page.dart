import '../my_wishlist_boards_page/widgets/miscimagecopy_item_widget.dart';
import '../my_wishlist_boards_page/widgets/widget1_item_widget.dart';
import 'bloc/my_wishlist_boards_bloc.dart';
import 'models/miscimagecopy_item_model.dart';
import 'models/my_wishlist_boards_model.dart';
import 'models/widget1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyWishlistBoardsPage extends StatefulWidget {
  const MyWishlistBoardsPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistBoardsPageState createState() => MyWishlistBoardsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistBoardsBloc>(
      create: (context) => MyWishlistBoardsBloc(MyWishlistBoardsState(
        myWishlistBoardsModelObj: MyWishlistBoardsModel(),
      ))
        ..add(MyWishlistBoardsInitialEvent()),
      child: MyWishlistBoardsPage(),
    );
  }
}

class MyWishlistBoardsPageState extends State<MyWishlistBoardsPage>
    with AutomaticKeepAliveClientMixin<MyWishlistBoardsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      _buildMiscImageCopy(context),
                      SizedBox(height: 13.v),
                      _buildGoingOutOut2(context),
                      SizedBox(height: 44.v),
                      _buildMiscImageCopy1(context),
                      SizedBox(height: 13.v),
                      _buildGoingOutOut(
                        context,
                        textLabel: "lbl_party_fashion".tr,
                      ),
                      SizedBox(height: 3.v),
                      BlocSelector<MyWishlistBoardsBloc, MyWishlistBoardsState,
                          TextEditingController?>(
                        selector: (state) => state.itemsController,
                        builder: (context, itemsController) {
                          return CustomTextFormField(
                            controller: itemsController,
                            hintText: "lbl_20t_items".tr,
                            hintStyle: CustomTextStyles
                                .bodySmallProductSansLightBluegray40004_1,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray1,
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
              decoration: AppDecoration.fillWhiteA.copyWith(
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
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage56x51,
                        height: 56.v,
                        width: 51.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage88x51,
                        height: 88.v,
                        width: 51.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                    ],
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
                  textLabel: "msg_going_out_outfits".tr,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_36_items2".tr,
                  style: CustomTextStyles
                      .bodySmallProductSansLightBluegray40004Light,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 13.v),
        Divider(
          color: appTheme.gray20004,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMiscImageCopy(BuildContext context) {
    return Container(
      height: 149.v,
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: BlocSelector<MyWishlistBoardsBloc, MyWishlistBoardsState,
          MyWishlistBoardsModel?>(
        selector: (state) => state.myWishlistBoardsModelObj,
        builder: (context, myWishlistBoardsModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 4.h,
              );
            },
            itemCount:
                myWishlistBoardsModelObj?.miscimagecopyItemList.length ?? 0,
            itemBuilder: (context, index) {
              MiscimagecopyItemModel model =
                  myWishlistBoardsModelObj?.miscimagecopyItemList[index] ??
                      MiscimagecopyItemModel();
              return MiscimagecopyItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGoingOutOut2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_office_fashion".tr,
              style: CustomTextStyles.titleLargeProductSansBlack900Bold22,
            ),
            SizedBox(height: 6.v),
            Text(
              "lbl_20t_items".tr,
              style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightGray40003,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 21.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMiscImageCopy1(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 149.v,
        width: 330.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 59.v,
                width: 53.h,
                margin: EdgeInsets.only(right: 55.h),
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
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 149.v,
                width: 330.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 88.v,
                      width: 51.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 149.v,
                        child: BlocSelector<MyWishlistBoardsBloc,
                            MyWishlistBoardsState, MyWishlistBoardsModel?>(
                          selector: (state) => state.myWishlistBoardsModelObj,
                          builder: (context, myWishlistBoardsModelObj) {
                            return ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  width: 4.h,
                                );
                              },
                              itemCount: myWishlistBoardsModelObj
                                      ?.widget1ItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                Widget1ItemModel model =
                                    myWishlistBoardsModelObj
                                            ?.widget1ItemList[index] ??
                                        Widget1ItemModel();
                                return Widget1ItemWidget(
                                  model,
                                );
                              },
                            );
                          },
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

  /// Common widget
  Widget _buildGoingOutOut(
    BuildContext context, {
    required String textLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textLabel,
          style: CustomTextStyles.titleLargeProductSansBlack900Bold22.copyWith(
            color: appTheme.black900,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightGray40003,
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
