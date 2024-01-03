import '../my_orders_two_page/widgets/orderdetailslist_item_widget.dart';
import 'bloc/my_orders_two_bloc.dart';
import 'models/my_orders_two_model.dart';
import 'models/orderdetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersTwoPage extends StatefulWidget {
  const MyOrdersTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersTwoPageState createState() => MyOrdersTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersTwoBloc>(
      create: (context) => MyOrdersTwoBloc(MyOrdersTwoState(
        myOrdersTwoModelObj: MyOrdersTwoModel(),
      ))
        ..add(MyOrdersTwoInitialEvent()),
      child: MyOrdersTwoPage(),
    );
  }
}

class MyOrdersTwoPageState extends State<MyOrdersTwoPage>
    with AutomaticKeepAliveClientMixin<MyOrdersTwoPage> {
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
      child: BlocSelector<MyOrdersTwoBloc, MyOrdersTwoState, MyOrdersTwoModel?>(
        selector: (state) => state.myOrdersTwoModelObj,
        builder: (context, myOrdersTwoModelObj) {
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
                myOrdersTwoModelObj?.orderdetailslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              OrderdetailslistItemModel model =
                  myOrdersTwoModelObj?.orderdetailslistItemList[index] ??
                      OrderdetailslistItemModel();
              return OrderdetailslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
