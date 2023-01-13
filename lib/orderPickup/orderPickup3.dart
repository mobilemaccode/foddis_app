import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/Config/geoLocation.dart';
import 'package:foodie_bell/orderPickup/orderPickupWidgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderPickupThree extends StatefulWidget {
  @override
  _OrderPickupThreeState createState() => _OrderPickupThreeState();
}

class _OrderPickupThreeState extends State<OrderPickupThree> {
  CameraPosition _kGooglePlex;
  Map<String, Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await getLocation();
    });
    super.initState();
  }

  @override
  getLocation() async {
    var location = await GeoLocation.getCurrentLocation(context);
    var locationOn = await latLongMaps(location);

    setState(() {
      _kGooglePlex = CameraPosition(
        target: LatLng(
          double.parse(locationOn['latitude']),
          double.parse(locationOn['longitude']),
        ),
        tilt: 59.440717697143555,
        bearing: 192.8334901395799,
        zoom: 19.151926040649414,
      );
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId('My Location'),
        position: LatLng(
          double.parse(locationOn['latitude']),
          double.parse(locationOn['longitude']),
        ),
        infoWindow: InfoWindow(),
      );
      _markers['My Location'] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('location lat long ${_kGooglePlex}');
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              (_kGooglePlex != null)
                  ? Stack(
                      // alignment: Alignment.topCenter,
                      children: [
                        GoogleMap(
                          markers: _markers.values.toSet(),
                          myLocationEnabled: true,
                          mapType: MapType.normal,
                          myLocationButtonEnabled: false,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            top: 100.0,
                            left: 25.0,
                            right: 25.0,
                          ),
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          height: 100,
                          width: double.infinity,
                          color: whiteColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Rectangle 18719(2).png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  // Image.asset(
                                  //   'assets/images/Rectangle 18719.png',
                                  //   fit: BoxFit.fill,
                                  // ),
                                ),
                              ),
                              widthSizedBox(20.0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // heightSizedBox(15.0),
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            top: 180,
                            left: MediaQuery.of(context).size.width * 0.75,
                          ),
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffDF6E3D),
                                Color(0xffFA8B01),
                              ],
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft,
                              // tileMode: TileMode.repeated,
                            ),
                          ),
                          child: Text(
                            ' 30\nmin',
                            style: TextStyle(
                              color: whiteColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.54,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(top: 40.0),
                                padding: EdgeInsets.only(bottom: 20.0),
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: double.infinity,
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    customerDetailView(context),
                                    heightSizedBox(15.0),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/payAndDeliver');
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50.0,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffDF6E3D),
                                              Color(0xffFA8B01),
                                            ],
                                            end: Alignment.centerRight,
                                            begin: Alignment.centerLeft,
                                            // tileMode: TileMode.repeated,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey[300],
                                              blurRadius: 3.5,
                                              offset: Offset(0.0, 2.0),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Text(
                                          'Delivery',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(themeColor),
                      ),
                    ),
            ],
          ),
          progressHUD,
        ],
      ),
    );
  }
}
