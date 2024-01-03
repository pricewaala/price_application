import '../my_orders_one_one_page/widgets/orderdetailslist2_item_widget.dart';
import 'bloc/my_orders_one_one_bloc.dart';
import 'models/my_orders_one_one_model.dart';
import 'models/orderdetailslist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyOrdersOneOnePage extends StatefulWidget {
  const MyOrdersOneOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersOneOnePageState createState() => MyOrdersOneOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersOneOneBloc>(
      create: (context) => MyOrdersOneOneBloc(MyOrdersOneOneState(
        myOrdersOneOneModelObj: MyOrdersOneOneModel(),
      ))
        ..add(MyOrdersOneOneInitialEvent()),
      child: MyOrdersOneOnePage(),
    );
  }
}

class MyOrdersOneOnePageState extends State<MyOrdersOneOnePage>
    with AutomaticKeepAliveClientMixin<MyOrdersOneOnePage> {
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
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: BlocSelector<MyOrdersOneOneBloc, MyOrdersOneOneState,
          MyOrdersOneOneModel?>(
        selector: (state) => state.myOrdersOneOneModelObj,
        builder: (context, myOrdersOneOneModelObj) {
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
                myOrdersOneOneModelObj?.orderdetailslist2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Orderdetailslist2ItemModel model =
                  myOrdersOneOneModelObj?.orderdetailslist2ItemList[index] ??
                      Orderdetailslist2ItemModel();
              return Orderdetailslist2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
