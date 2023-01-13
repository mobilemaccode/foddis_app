import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/Config/toast.dart';

Widget orderEarnReview(context) {
  var size = MediaQuery.of(context).size;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        alignment: Alignment.center,
        height: size.height * 0.12,
        width: size.width * 0.25,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: themeColor,
              blurRadius: 0.7,
              // offset: Offset(0.0, 25.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '100',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSizedBox(5.0),
            Text(
              'Total Order',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.125,
        width: size.width * 0.25,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: themeColor,
              blurRadius: 0.7,
              // offset: Offset(0.0, 25.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '100',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSizedBox(5.0),
            Text(
              'Total Earn',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.125,
        width: size.width * 0.25,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: themeColor,
              blurRadius: 0.7,
              // offset: Offset(0.0, 25.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '100',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSizedBox(5.0),
            Text(
              'Total Review',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget currentOrder(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Current Order',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      heightSizedBox(15.0),
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 2.5,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSizedBox(8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Restourant Name',
                ),
                Text(
                  '* 4.2 rating',
                ),
              ],
            ),
            heightSizedBox(5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    '2 New Nehru Nagar Indore 457415, Madhya Pradesh',
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: themeColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.call,
                      size: 20.0,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
            heightSizedBox(15.0),
            dividerCommon(indent: 1.0, height: 1.0, thickness: 1.0),
            heightSizedBox(15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Image.asset(
                    'assets/images/Rectangle 18758.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fruit, Fresh fruit',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Western food  \$59 Per plate ',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Text(
                  '2 pizza',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget acceptDeclineBtn(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/orderDetails');
        },
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: Color(0xffD6D5E0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            'Accept',
            style: TextStyle(
              color: whiteColor,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Constants.showToast('Decline');
        },
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: themeColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            'Decline',
            style: TextStyle(
              color: whiteColor,
              fontSize: 15.0,
            ),
          ),
        ),
      )
    ],
  );
}

Widget showHistoryView(context) {
  return Container(
    decoration: BoxDecoration(
      color: whiteColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
          offset: Offset(0.0, 0.0),
        ),
      ],
    ),
    child: ListTile(
      onTap: () {
        Navigator.pushNamed(context, '/orderHistory');
      },
      title: Text(
        'History',
      ),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    ),
  );
}

Widget logout(context) {
  return Container(
    decoration: BoxDecoration(
      color: whiteColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
          offset: Offset(0.0, 0.0),
        ),
      ],
    ),
    child: ListTile(
      onTap: () {
        Constants.showToast('Logout');
      },
      title: Text(
        'Logout',
      ),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    ),
  );
}
