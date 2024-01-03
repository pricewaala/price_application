import '../my_orders_two_two_page/widgets/orderdetailslist6_item_widget.dart';
import 'bloc/my_orders_two_two_bloc.dart';
import 'models/my_orders_two_two_model.dart';
import 'models/orderdetailslist6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersTwoTwoPage extends StatefulWidget {
  const MyOrdersTwoTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersTwoTwoPageState createState() => MyOrdersTwoTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersTwoTwoBloc>(
      create: (context) => MyOrdersTwoTwoBloc(MyOrdersTwoTwoState(
        myOrdersTwoTwoModelObj: MyOrdersTwoTwoModel(),
      ))
        ..add(MyOrdersTwoTwoInitialEvent()),
      child: MyOrdersTwoTwoPage(),
    );
  }
}

class MyOrdersTwoTwoPageState extends State<MyOrdersTwoTwoPage>
    with AutomaticKeepAliveClientMixin<MyOrdersTwoTwoPage> {
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
      child: BlocSelector<MyOrdersTwoTwoBloc, MyOrdersTwoTwoState,
          MyOrdersTwoTwoModel?>(
        selector: (state) => state.myOrdersTwoTwoModelObj,
        builder: (context, myOrdersTwoTwoModelObj) {
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
                myOrdersTwoTwoModelObj?.orderdetailslist6ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist6ItemModel model =
                  myOrdersTwoTwoModelObj?.orderdetailslist6ItemList[index] ??
                      Orderdetailslist6ItemModel();
              return Orderdetailslist6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
