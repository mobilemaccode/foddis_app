import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/payAndDeliver/payAndDeliverWidgets.dart';

class PayAndDeliver extends StatefulWidget {
  @override
  _PayAndDeliverState createState() => _PayAndDeliverState();
}

class _PayAndDeliverState extends State<PayAndDeliver> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            padding: EdgeInsets.only(
              top: 100.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                deliveryPerson(context),
                heightSizedBox(20.0),
                paymentTypeSelecet(context),
                heightSizedBox(30.0),
                paymentDetails(context),
                heightSizedBox(30.0),
                successDeliveryBtn(context),
              ],
            ),
          ),
          progressHUD,
        ],
      ),
    );
  }
}
