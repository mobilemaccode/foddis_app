import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/Config/toast.dart';

Widget orderNoBarcode(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.57,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 10.0,
          bottom: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.1,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Number',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '# 01254',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: themeColor,
                  ),
                ),
                Text(
                  'Cash on delivery',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: themeColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.23,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.1,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Image.asset(
          'assets/images/image 190.png',
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

Widget distanceNavigator(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(
                Icons.circle,
                color: Colors.grey,
                size: 17.0,
              ),
              Icon(
                Icons.fiber_manual_record,
                color: Colors.grey,
                size: 5,
              ),
              Icon(
                Icons.fiber_manual_record,
                color: Colors.grey,
                size: 5,
              ),
              Icon(
                Icons.fiber_manual_record,
                color: Colors.grey,
                size: 5,
              ),
              Icon(
                Icons.location_on,
                color: themeColor,
                size: 25,
              ),
            ],
          ),
          widthSizedBox(10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cafe 99',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              heightSizedBox(14.0),
              Text(
                'TT nagar',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
      Text(
        '50 KM',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget cafeDetail(context) {
  return Container(
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

Widget customerDetail(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Customer',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      heightSizedBox(15.0),
      Container(
        height: MediaQuery.of(context).size.height * 0.12,
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSizedBox(8.0),
            heightSizedBox(5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
            Flexible(
              child: Text(
                '2 New Nehru Nagar Indore 457415, Madhya Pradesh',
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget chargesApplied(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Late NIght Surcharge',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$90',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      heightSizedBox(10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Moving Cart',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$90',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      Text(
        'Additional Services',
      ),
      heightSizedBox(10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Discount',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$90',
            style: TextStyle(
              fontSize: 15.0,
              color: themeColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      Text(
        'Promo Code: 554dffd',
      ),
      heightSizedBox(10.0),
      dividerCommon(
        height: 1.0,
        thickness: 1.0,
      ),
      heightSizedBox(10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$250',
            style: TextStyle(
              fontSize: 15.0,
              color: themeColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget acceptDecline(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 3.5,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Text(
                'Decline',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/orderPickupOne');
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.38,
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: themeColor,
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
        ],
      ),
    ],
  );
}
