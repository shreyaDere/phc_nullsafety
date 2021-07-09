import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/orders_list/order_list_view_model.dart';
import 'package:stacked/stacked.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderListViewModel>.reactive(
      viewModelBuilder: () => OrderListViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: COLOR_PRIMARY,
          iconTheme: IconThemeData(color: COLOR_White),
          title: Text(
            "User Name",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(Icons.power_settings_new),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(currentWidget: OrdersList()),
        ),
      ),
    );
  }
}

class OrdersList extends ViewModelWidget<OrderListViewModel> {
  @override
  Widget build(BuildContext context, OrderListViewModel viewModel) {
    return Container(
        margin: EdgeInsets.all(15.0),
        color: Colors.white,
        child: ListView.builder(
            // itemCount: viewModel.reversepresciptionData.length > 0
            //     ? viewModel.reversepresciptionData.length
            //     : 0,
            itemBuilder: (context, index) {
          return GestureDetector(
            // onTap: () => viewModel.navigateToPrescriptionStatusView(
            //     index: index),
            child: Container(
              margin: EdgeInsets.only(
                  top: 10.0, left: 5.0, right: 5.0, bottom: 4.0),
              padding: EdgeInsets.only(
                  left: 10.0, right: 5.0, top: 15.0, bottom: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: COLOR_GRAY_BLACK,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  ),
                  BoxShadow(
                    color: COLOR_GRAY_BLACK,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset:
                        Offset(-2.0, -2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Order No:",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' 12343',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Date & Time : 23/21/23 | 8:30 ",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order Status",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Shipping",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Products",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("18 Products",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order Price",
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("1,234",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          );
        }));
  }
}
