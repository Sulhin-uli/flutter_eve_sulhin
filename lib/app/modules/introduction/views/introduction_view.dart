import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // image
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Lottie.network(
                    "https://assets4.lottiefiles.com/packages/lf20_9evakyqx.json"),
              ),
              // icon social media
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.googleLogin();
                      },
                      child: Text("Google"),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.handleSignOut();
                      },
                      child: Text("SignOut"),
                    )
                  ],
                ),
              ),
              // button sign in
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
