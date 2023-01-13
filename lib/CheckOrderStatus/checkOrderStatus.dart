import 'package:flutter/material.dart';
import 'package:foodie_bell/CheckOrderStatus/checkoutOrderStatusWidgets.dart';
import 'package:foodie_bell/Config/common_widgets.dart';

class CheckOrderStatus extends StatefulWidget {
  @override
  _CheckOrderStatusState createState() => _CheckOrderStatusState();
}

class _CheckOrderStatusState extends State<CheckOrderStatus> {
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
                    height: 270,
                    width: width,
                    child: Image.asset(
                      'assets/images/Group 12570.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image.asset(
                            'assets/images/Rectangle 18719.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        widthSizedBox(8.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            heightSizedBox(15.0),
                            Text(
                              'Tanuki Raw',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Food delivery',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.32),
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                      top: 45.0,
                      bottom: 30.0,
                    ),
                    // height: ,
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
                        orderEarnReview(context),
                        heightSizedBox(25.0),
                        currentOrder(context),
                        heightSizedBox(25.0),
                        acceptDeclineBtn(context),
                        heightSizedBox(25.0),
                        showHistoryView(context),
                        heightSizedBox(25.0),
                        logout(context),
                      ],
                    ),
                  )
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
