import '../my_orders_two_one_page/widgets/orderdetailslist3_item_widget.dart';
import 'bloc/my_orders_two_one_bloc.dart';
import 'models/my_orders_two_one_model.dart';
import 'models/orderdetailslist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersTwoOnePage extends StatefulWidget {
  const MyOrdersTwoOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersTwoOnePageState createState() => MyOrdersTwoOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersTwoOneBloc>(
      create: (context) => MyOrdersTwoOneBloc(MyOrdersTwoOneState(
        myOrdersTwoOneModelObj: MyOrdersTwoOneModel(),
      ))
        ..add(MyOrdersTwoOneInitialEvent()),
      child: MyOrdersTwoOnePage(),
    );
  }
}

class MyOrdersTwoOnePageState extends State<MyOrdersTwoOnePage>
    with AutomaticKeepAliveClientMixin<MyOrdersTwoOnePage> {
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
      child: BlocSelector<MyOrdersTwoOneBloc, MyOrdersTwoOneState,
          MyOrdersTwoOneModel?>(
        selector: (state) => state.myOrdersTwoOneModelObj,
        builder: (context, myOrdersTwoOneModelObj) {
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
                myOrdersTwoOneModelObj?.orderdetailslist3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist3ItemModel model =
                  myOrdersTwoOneModelObj?.orderdetailslist3ItemList[index] ??
                      Orderdetailslist3ItemModel();
              return Orderdetailslist3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
