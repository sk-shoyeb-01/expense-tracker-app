import 'package:expensetracker/screens/profile/profile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70), // Custom height with padding
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0), // Padding around the entire AppBar
            child: AppBar(
              elevation: 0, // Optional: remove shadow
              centerTitle: true,
              title: const Text(
                "My Profile",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 16, // Smaller radius for a compact circle
                    backgroundColor: Color(0xFFE8F2EF),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFF107C5B),
                      size: 18, // Adjust icon size if needed
                    ),
                  ),
                ),
              ),
              actions: [
                SizedBox(width: 16), // Extra right padding if needed
              ],
            ),
          ),
        ),
      ),
      body: ProfileBody(),
    );
  }
}
