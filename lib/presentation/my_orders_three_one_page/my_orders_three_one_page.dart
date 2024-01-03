import '../my_orders_three_one_page/widgets/orderdetailslist4_item_widget.dart';
import 'bloc/my_orders_three_one_bloc.dart';
import 'models/my_orders_three_one_model.dart';
import 'models/orderdetailslist4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersThreeOnePage extends StatefulWidget {
  const MyOrdersThreeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersThreeOnePageState createState() => MyOrdersThreeOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersThreeOneBloc>(
      create: (context) => MyOrdersThreeOneBloc(MyOrdersThreeOneState(
        myOrdersThreeOneModelObj: MyOrdersThreeOneModel(),
      ))
        ..add(MyOrdersThreeOneInitialEvent()),
      child: MyOrdersThreeOnePage(),
    );
  }
}

class MyOrdersThreeOnePageState extends State<MyOrdersThreeOnePage>
    with AutomaticKeepAliveClientMixin<MyOrdersThreeOnePage> {
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
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      _buildOrderDetailsList(context),
                      SizedBox(height: 173.v),
                      _buildTabBar(context),
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
  Widget _buildOrderDetailsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<MyOrdersThreeOneBloc, MyOrdersThreeOneState,
          MyOrdersThreeOneModel?>(
        selector: (state) => state.myOrdersThreeOneModelObj,
        builder: (context, myOrdersThreeOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount:
                myOrdersThreeOneModelObj?.orderdetailslist4ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist4ItemModel model =
                  myOrdersThreeOneModelObj?.orderdetailslist4ItemList[index] ??
                      Orderdetailslist4ItemModel();
              return Orderdetailslist4ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBar(BuildContext context) {
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
            imagePath: ImageConstant.imgFrame33104Gray200,
            height: 23.v,
            width: 269.h,
          ),
        ],
      ),
    );
  }
}
