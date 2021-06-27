import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/widgets/recent_job.dart';
import 'package:jobby/widgets/recomended_job.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            left: 30,
            top: 60,
            right: 30,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/setting.png",
                    width: 26,
                  ),
                  Text(
                    "Home",
                    style: GoogleFonts.mulish(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    "assets/notif.png",
                    width: 26,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Let’s discover\nyour ideal job here.",
                style: GoogleFonts.mulish(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                style: GoogleFonts.mulish(fontSize: 16),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 26,
                    color: Color(0xFFA6A7AF),
                  ),
                  hintText: "Search Jobs...",
                  hintStyle: GoogleFonts.mulish(
                    color: Color(0xFF98999F),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xFF5284E3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Jobs",
                    style: GoogleFonts.mulish(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.mulish(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF5284E3),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecomendedJob(
                      image: "assets/google_logo.png",
                      title: "Senior Product Designer",
                      company: "Google LLC • South Jakarta",
                      numbers: "8",
                    ),
                    RecomendedJob(
                      image: "assets/facebook.png",
                      title: "Mobile Developer",
                      company: "Facebook INC • Singapore",
                      numbers: "12",
                    ),
                    RecomendedJob(
                      image: "assets/instagram.png",
                      title: "Website Developer",
                      company: "Instagram INC • Saudi Arabia",
                      numbers: "7.5",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Jobs",
                    style: GoogleFonts.mulish(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.mulish(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF5284E3),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RecentJob(
                image: "assets/twitter.png",
                job: "UI Designer",
                company: "Twitter • West Java",
              ),
              RecentJob(
                image: "assets/google_logo.png",
                job: "System Analyst",
                company: "Google Inc • California",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
