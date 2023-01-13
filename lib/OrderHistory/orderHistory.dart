import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/OrderHistory/orderHistoryWidgets.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  List ordersDetail = [
    {
      'name': 'abc df dsf sdf sdf',
      'description': 'this item is testy delicious ',
    },
    {
      'name': 'abc',
      'description': 'sdff',
    },
    {
      'name': 'abc',
      'description': 'sdff',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: width,
                    child: Image.asset(
                      'assets/images/Group 12570.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 25.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: whiteColor,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.black,
                                size: 18.0,
                              ),
                            ),
                          ),
                        ),
                        widthSizedBox(50.0),
                        Text(
                          'Order History',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.2),
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 5.0,
                      bottom: 40.0,
                    ),
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFCFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        orderHistoryDetails(context, ordersDetail),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          progressHUD,
        ],
      ),
    );
  }
}
