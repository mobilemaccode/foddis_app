import 'package:flutter/material.dart';
import 'package:foodie_bell/Config/common_widgets.dart';
import 'package:foodie_bell/Login/loginWidgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: height,
              width: width,
              color: whiteColor,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      SizedBox(
                        height: height * 0.4,
                        width: width,
                        child: Image.asset(
                          'assets/images/Vector 6 copy.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160.0),
                        child: Container(
                          height: height * 0.2,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 30.0,
                                offset: Offset(0.0, 25.0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.2,
                                child: Image.asset(
                                  'assets/images/Group 12592.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                                width: width * 0.25,
                                child: Image.asset(
                                  'assets/images/Foodie Bell.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          heightSizedBox(30.0),
                          signInEmail(),
                          heightSizedBox(20.0),
                          signInPassword(),
                          heightSizedBox(20.0),
                          forgotPassword(),
                          heightSizedBox(30.0),
                          loginBtn(context, formKey),
                        ],
                      ),
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
