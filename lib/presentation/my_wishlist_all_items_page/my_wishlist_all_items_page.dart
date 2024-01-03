import '../my_wishlist_all_items_page/widgets/productcardgrid2_item_widget.dart';
import 'bloc/my_wishlist_all_items_bloc.dart';
import 'models/my_wishlist_all_items_model.dart';
import 'models/productcardgrid2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyWishlistAllItemsPage extends StatefulWidget {
  const MyWishlistAllItemsPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistAllItemsPageState createState() => MyWishlistAllItemsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistAllItemsBloc>(
      create: (context) => MyWishlistAllItemsBloc(MyWishlistAllItemsState(
        myWishlistAllItemsModelObj: MyWishlistAllItemsModel(),
      ))
        ..add(MyWishlistAllItemsInitialEvent()),
      child: MyWishlistAllItemsPage(),
    );
  }
}

class MyWishlistAllItemsPageState extends State<MyWishlistAllItemsPage>
    with AutomaticKeepAliveClientMixin<MyWishlistAllItemsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      _buildProductCardGrid(context),
                      SizedBox(height: 32.v),
                      _buildTabBarColumn(context),
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
  Widget _buildProductCardGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: BlocSelector<MyWishlistAllItemsBloc, MyWishlistAllItemsState,
          MyWishlistAllItemsModel?>(
        selector: (state) => state.myWishlistAllItemsModelObj,
        builder: (context, myWishlistAllItemsModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 255.v,
              crossAxisCount: 2,
              mainAxisSpacing: 29.h,
              crossAxisSpacing: 29.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                myWishlistAllItemsModelObj?.productcardgrid2ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Productcardgrid2ItemModel model =
                  myWishlistAllItemsModelObj?.productcardgrid2ItemList[index] ??
                      Productcardgrid2ItemModel();
              return Productcardgrid2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 52.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame33104Gray20023x269,
            height: 23.v,
            width: 269.h,
          ),
        ],
      ),
    );
  }
}
