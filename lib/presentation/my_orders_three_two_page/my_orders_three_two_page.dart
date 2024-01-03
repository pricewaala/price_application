import '../my_orders_three_two_page/widgets/orderdetailslist7_item_widget.dart';
import 'bloc/my_orders_three_two_bloc.dart';
import 'models/my_orders_three_two_model.dart';
import 'models/orderdetailslist7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersThreeTwoPage extends StatefulWidget {
  const MyOrdersThreeTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersThreeTwoPageState createState() => MyOrdersThreeTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersThreeTwoBloc>(
      create: (context) => MyOrdersThreeTwoBloc(MyOrdersThreeTwoState(
        myOrdersThreeTwoModelObj: MyOrdersThreeTwoModel(),
      ))
        ..add(MyOrdersThreeTwoInitialEvent()),
      child: MyOrdersThreeTwoPage(),
    );
  }
}

class MyOrdersThreeTwoPageState extends State<MyOrdersThreeTwoPage>
    with AutomaticKeepAliveClientMixin<MyOrdersThreeTwoPage> {
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
      padding: EdgeInsets.only(
        left: 21.h,
        right: 18.h,
      ),
      child: BlocSelector<MyOrdersThreeTwoBloc, MyOrdersThreeTwoState,
          MyOrdersThreeTwoModel?>(
        selector: (state) => state.myOrdersThreeTwoModelObj,
        builder: (context, myOrdersThreeTwoModelObj) {
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
                myOrdersThreeTwoModelObj?.orderdetailslist7ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist7ItemModel model =
                  myOrdersThreeTwoModelObj?.orderdetailslist7ItemList[index] ??
                      Orderdetailslist7ItemModel();
              return Orderdetailslist7ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
