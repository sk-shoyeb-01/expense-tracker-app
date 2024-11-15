import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Account Info",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF4D4D4D)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFEBEBEB),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Type",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "Customer",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 17,
                          color: Color(0xFF808080),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subscription Plan",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "Elite",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                          color: Color(0xFF808080),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Ratings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('asset/star.png'),
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                              // fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
