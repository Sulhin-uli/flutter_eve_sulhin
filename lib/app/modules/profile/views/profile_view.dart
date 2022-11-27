import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/wecare-logo.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(9),
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          child: Icon(
                            Icons.settings,
                            color: Colors.green,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          border: Border.all(
                            color: Colors.white, // Set border color
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Colors.green,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          border: Border.all(
                            color: Colors.white, // Set border color
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            width: 100,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset(
                                'assets/images/profile.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Obx(
                    () => Text(
                      controller.name.value,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Fundraising",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    child: VerticalDivider(color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Text(
                        "487",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    child: VerticalDivider(color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Text(
                        "126",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: Divider(),
            ),
            Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(9),
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          child: Icon(
                            Icons.monetization_on,
                            color: Colors.green,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          border: Border.all(
                            color: Colors.white, // Set border color
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$345",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My Walet Balance",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                    ),
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Top up",
                      style: TextStyle(color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 211, 211, 211), // Set border color
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, wordSpacing: 3.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard .",
                    style: TextStyle(wordSpacing: 3.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, bottom: 7),
              child: Row(
                children: [
                  Text("Interest"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.green,
                    size: 16,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Medical",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Disaster",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Education",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Social",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Orphanage",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Humanity",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Environment",
                    style: TextStyle(color: Colors.green),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // Set border color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              margin: EdgeInsets.only(),
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                top: 10,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.home,
                        color: Colors.green,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(
                        color: Colors.white, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.green,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(
                        color: Colors.white, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.list_alt,
                        color: Colors.green,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(
                        color: Colors.white, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.chat,
                        color: Colors.green,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      border: Border.all(
                        color: Colors.white, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.white, // Set border color
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 211, 211, 211), // Set border color
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
