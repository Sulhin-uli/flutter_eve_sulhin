import 'package:flutter/material.dart';
import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  // image
                  Container(
                    // margin: EdgeInsets.only(top: 70),
                    child: Lottie.asset("assets/images/welcome.json"),
                  ),
                  // icon social media
                  Container(
                    child: Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Let's you in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () => controller.googleLogin(),
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                              left: 18,
                              right: 18,
                              top: 15,
                              bottom: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/google.png",
                                  width: 30,
                                  height: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(
                                    255, 211, 211, 211), // Set border color
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () => controller.googleLogin(),
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                              left: 18,
                              right: 18,
                              top: 15,
                              bottom: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 14,
                                  ),
                                  child: Image.asset(
                                    "assets/icons/facebook.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(
                                    255, 211, 211, 211), // Set border color
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () => controller.googleLogin(),
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            padding: EdgeInsets.only(
                              left: 18,
                              right: 18,
                              top: 15,
                              bottom: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/apple.png",
                                  width: 30,
                                  height: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Apple",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(
                                    255, 211, 211, 211), // Set border color
                                width: 1.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "or",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     controller.googleLogin();
                  //   },
                  //   child: Text("Google"),
                  // ),
                  // Container(
                  //   child: Column(
                  //     children: [
                  //       ElevatedButton(
                  //         onPressed: () {
                  //           controller.handleSignOut();
                  //         },
                  //         child: Text("SignOut"),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // button sign in
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 45,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () => Get.toNamed(Routes.LOGIN),
                            child: Text(
                              "Sign in with password",
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(Routes.REGISTER),
                              child: Text(
                                "Sign up",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
