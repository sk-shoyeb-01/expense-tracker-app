import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Personal Information",
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
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "Alexandara Simonic",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
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
                      "Email",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "abc@gmail.com",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
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
                      "Phone number",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "+91 723456789",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
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
                      "Gender",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                    Row(
                      children: [
                        Text(
                          "Male",
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
