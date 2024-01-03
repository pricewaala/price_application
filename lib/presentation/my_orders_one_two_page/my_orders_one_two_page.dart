import '../my_orders_one_two_page/widgets/orderdetailslist5_item_widget.dart';
import 'bloc/my_orders_one_two_bloc.dart';
import 'models/my_orders_one_two_model.dart';
import 'models/orderdetailslist5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersOneTwoPage extends StatefulWidget {
  const MyOrdersOneTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersOneTwoPageState createState() => MyOrdersOneTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersOneTwoBloc>(
      create: (context) => MyOrdersOneTwoBloc(MyOrdersOneTwoState(
        myOrdersOneTwoModelObj: MyOrdersOneTwoModel(),
      ))
        ..add(MyOrdersOneTwoInitialEvent()),
      child: MyOrdersOneTwoPage(),
    );
  }
}

class MyOrdersOneTwoPageState extends State<MyOrdersOneTwoPage>
    with AutomaticKeepAliveClientMixin<MyOrdersOneTwoPage> {
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
              SizedBox(height: 32.v),
              _buildOrderDetailsList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetailsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<MyOrdersOneTwoBloc, MyOrdersOneTwoState,
          MyOrdersOneTwoModel?>(
        selector: (state) => state.myOrdersOneTwoModelObj,
        builder: (context, myOrdersOneTwoModelObj) {
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
                myOrdersOneTwoModelObj?.orderdetailslist5ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist5ItemModel model =
                  myOrdersOneTwoModelObj?.orderdetailslist5ItemList[index] ??
                      Orderdetailslist5ItemModel();
              return Orderdetailslist5ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
