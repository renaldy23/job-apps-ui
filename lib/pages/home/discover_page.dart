import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/pages/job_detail.dart';
import 'package:jobby/widgets/discover_job.dart';
import 'package:jobby/widgets/recomended_job.dart';

class DiscoverPage extends StatelessWidget {
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
                    "Discover",
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
                height: 42,
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
                  hintText: "Software Engineering...",
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
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobDetail(
                        image: "assets/google_logo.png",
                        job: "Senior Product Designer",
                        company: "Google LLC • East Texas",
                        number: "8",
                        applicants: "16",
                      ),
                    ),
                  );
                },
                child: DiscoverJob(
                  image: "assets/google_logo.png",
                  title: "Senior UI Designer",
                  company: "Google LLC • East Texas",
                  numbers: "10",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobDetail(
                        image: "assets/facebook.png",
                        job: "React Native Developer",
                        company: "Facebook LLC • East US",
                        number: "17",
                        applicants: "25",
                      ),
                    ),
                  );
                },
                child: DiscoverJob(
                  image: "assets/facebook.png",
                  title: "React Native Developer",
                  company: "Facebook LLC • East US",
                  numbers: "17",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobDetail(
                          image: "assets/airbnb.png",
                          job: "Dev OPS",
                          company: "Air BnB LLC • West Java",
                          number: "17",
                          applicants: "9"),
                    ),
                  );
                },
                child: DiscoverJob(
                  image: "assets/airbnb.png",
                  title: "Dev OPS",
                  company: "Air BnB LLC • West Java",
                  numbers: "17",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
