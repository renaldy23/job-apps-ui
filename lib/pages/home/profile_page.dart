import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/pages/sign_in_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          left: 30,
          top: 60,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "My Profile",
                style: GoogleFonts.mulish(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/user_pic.png",
                  width: 60,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jason Howardy",
                        style: GoogleFonts.mulish(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Software Engineering",
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF98999F),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/exit.png",
                    width: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/user_logo.png",
                      width: 20,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.task_alt),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "My Jobs",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.compare_arrows_rounded),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Transfer Funds",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_view_day_sharp,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "My Cards",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Settings",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
