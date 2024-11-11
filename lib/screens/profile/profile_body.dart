import 'dart:math';

import 'package:expensetracker/screens/profile/account_info.dart';
import 'package:expensetracker/screens/profile/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8.0),
        child: Scrollbar(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 255,
                decoration: BoxDecoration(
                    // gradient: const LinearGradient(colors: [
                    //   Color(0xFFFFFFFF),
                    //   Color(0xFF1A946F), // Corrected color representation
                    //   Color(0xFF98BF64),
                    //   Color(0xFFFFFFFF)
                    // ], transform: GradientRotation(pi / 4)),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.shade200,
                          offset: const Offset(4, 4))
                    ]),
                child: Stack(
                  children: [
                    // First background gradient
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white, // Color #FFFFFF
                            Colors.white, // Color #FFFFFF
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    // Second background gradient
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(
                                26, 148, 111, 0.5), // rgba(26, 148, 111, 0.5)
                            Color.fromRGBO(
                                152, 191, 100, 0.5), // rgba(152, 191, 100, 0.5)
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    // Third background gradient
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(
                                255, 255, 255, 0.5), // rgba(255, 255, 255, 0.5)
                            Color.fromRGBO(
                                255, 255, 255, 0.5), // rgba(255, 255, 255, 0.5)
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 140,
                              height: 130,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        "https://avatars.githubusercontent.com/u/52367870"),
                                  ),
                                  Positioned(
                                      bottom: 4,
                                      right: 12,
                                      child: Image(
                                          width: 45,
                                          image:
                                              AssetImage("asset/camera.png"))),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Alexandara Simonic",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Edit your name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Color(0xFFA0A1A2),
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AccountInfo(),
              const SizedBox(
                height: 40,
              ),
              const PersonalInfo()
            ],
          ),
        ));
  }
}
