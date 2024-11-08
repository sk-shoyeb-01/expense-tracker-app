import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.yellow),
                        ),
                        const Icon(
                          CupertinoIcons.person_fill,
                          color: Color.fromARGB(255, 160, 150, 59),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.settings)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary
                  ], transform: const GradientRotation(pi / 4)),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey.shade400,
                        offset: const Offset(4, 4))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Total Balance",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w800)),
                  const Text(
                    "Rs 2232.00",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                    color: Colors.white24,
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.arrow_down,
                                    size: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Income",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Rs 2500.00',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 253, 136, 127),
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.arrow_down,
                                    size: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Income",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Rs 2500.00',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transaction",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text("View All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Theme.of(context).colorScheme.outline),
                        color: Color.fromARGB(255, 199, 194, 194),
                      )),
                )
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(6),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.grey.shade400,
                                        offset: const Offset(4, 4))
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.yellow),
                                            ),
                                            const Icon(
                                              CupertinoIcons.person_fill,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "Food ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("-\$45.00",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 16)),
                                            Text(
                                              "Today",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 199, 194, 194)),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )));
                    }))
          ],
        ),
      ),
    );
  }
}
