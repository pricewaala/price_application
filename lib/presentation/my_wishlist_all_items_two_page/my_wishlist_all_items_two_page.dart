import '../my_wishlist_all_items_two_page/widgets/productcardgrid6_item_widget.dart';
import 'bloc/my_wishlist_all_items_two_bloc.dart';
import 'models/my_wishlist_all_items_two_model.dart';
import 'models/productcardgrid6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyWishlistAllItemsTwoPage extends StatefulWidget {
  const MyWishlistAllItemsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistAllItemsTwoPageState createState() =>
      MyWishlistAllItemsTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistAllItemsTwoBloc>(
      create: (context) => MyWishlistAllItemsTwoBloc(MyWishlistAllItemsTwoState(
        myWishlistAllItemsTwoModelObj: MyWishlistAllItemsTwoModel(),
      ))
        ..add(MyWishlistAllItemsTwoInitialEvent()),
      child: MyWishlistAllItemsTwoPage(),
    );
  }
}

class MyWishlistAllItemsTwoPageState extends State<MyWishlistAllItemsTwoPage>
    with AutomaticKeepAliveClientMixin<MyWishlistAllItemsTwoPage> {
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
      child: BlocSelector<MyWishlistAllItemsTwoBloc, MyWishlistAllItemsTwoState,
          MyWishlistAllItemsTwoModel?>(
        selector: (state) => state.myWishlistAllItemsTwoModelObj,
        builder: (context, myWishlistAllItemsTwoModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 255.v,
              crossAxisCount: 2,
              mainAxisSpacing: 29.h,
              crossAxisSpacing: 29.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: myWishlistAllItemsTwoModelObj
                    ?.productcardgrid6ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Productcardgrid6ItemModel model = myWishlistAllItemsTwoModelObj
                      ?.productcardgrid6ItemList[index] ??
                  Productcardgrid6ItemModel();
              return Productcardgrid6ItemWidget(
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
