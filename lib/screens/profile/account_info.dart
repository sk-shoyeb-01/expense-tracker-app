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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFEBEBEB),
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
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
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
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
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
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
