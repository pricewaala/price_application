import '../my_wishlist_all_items_one_page/widgets/productcardgrid8_item_widget.dart';
import 'bloc/my_wishlist_all_items_one_bloc.dart';
import 'models/my_wishlist_all_items_one_model.dart';
import 'models/productcardgrid8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyWishlistAllItemsOnePage extends StatefulWidget {
  const MyWishlistAllItemsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistAllItemsOnePageState createState() =>
      MyWishlistAllItemsOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistAllItemsOneBloc>(
      create: (context) => MyWishlistAllItemsOneBloc(MyWishlistAllItemsOneState(
        myWishlistAllItemsOneModelObj: MyWishlistAllItemsOneModel(),
      ))
        ..add(MyWishlistAllItemsOneInitialEvent()),
      child: MyWishlistAllItemsOnePage(),
    );
  }
}

class MyWishlistAllItemsOnePageState extends State<MyWishlistAllItemsOnePage>
    with AutomaticKeepAliveClientMixin<MyWishlistAllItemsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray90005,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              _buildProductCardGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: BlocSelector<MyWishlistAllItemsOneBloc, MyWishlistAllItemsOneState,
          MyWishlistAllItemsOneModel?>(
        selector: (state) => state.myWishlistAllItemsOneModelObj,
        builder: (context, myWishlistAllItemsOneModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 255.v,
              crossAxisCount: 2,
              mainAxisSpacing: 29.h,
              crossAxisSpacing: 29.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: myWishlistAllItemsOneModelObj
                    ?.productcardgrid8ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Productcardgrid8ItemModel model = myWishlistAllItemsOneModelObj
                      ?.productcardgrid8ItemList[index] ??
                  Productcardgrid8ItemModel();
              return Productcardgrid8ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
