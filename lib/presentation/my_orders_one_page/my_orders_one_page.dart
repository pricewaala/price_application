import '../my_orders_one_page/widgets/orderdetails_item_widget.dart';
import 'bloc/my_orders_one_bloc.dart';
import 'models/my_orders_one_model.dart';
import 'models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersOnePage extends StatefulWidget {
  const MyOrdersOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersOnePageState createState() => MyOrdersOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersOneBloc>(
      create: (context) => MyOrdersOneBloc(MyOrdersOneState(
        myOrdersOneModelObj: MyOrdersOneModel(),
      ))
        ..add(MyOrdersOneInitialEvent()),
      child: MyOrdersOnePage(),
    );
  }
}

class MyOrdersOnePageState extends State<MyOrdersOnePage>
    with AutomaticKeepAliveClientMixin<MyOrdersOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildOrderDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<MyOrdersOneBloc, MyOrdersOneState, MyOrdersOneModel?>(
        selector: (state) => state.myOrdersOneModelObj,
        builder: (context, myOrdersOneModelObj) {
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
            itemCount: myOrdersOneModelObj?.orderdetailsItemList.length ?? 0,
            itemBuilder: (context, index) {
              OrderdetailsItemModel model =
                  myOrdersOneModelObj?.orderdetailsItemList[index] ??
                      OrderdetailsItemModel();
              return OrderdetailsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
