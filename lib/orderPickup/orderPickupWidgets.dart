import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';

Widget orderAndRestourant(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.25,
    width: MediaQuery.of(context).size.height * 0.45,
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
                heightSizedBox(12.0),
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
  );
}

Widget customerDetailView(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.12,
    width: MediaQuery.of(context).size.height * 0.45,
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
    padding: EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'johny duo',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
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
        Flexible(
          child: Text(
            '2 New Nehru Nagar Indore 457415, indore, Madhya Pradesh',
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    ),
  );
}

Widget restourantDelivery(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  '15 min',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  height: 1.0,
                  width: MediaQuery.of(context).size.width * 0.34,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  '25 min',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  height: 1.0,
                  width: MediaQuery.of(context).size.width * 0.34,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
          ],
        ),
        heightSizedBox(10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'You',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Customer',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
