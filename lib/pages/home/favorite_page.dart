import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/providers/favorite_job_provider.dart';
import 'package:jobby/widgets/favorite_job.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FavoriteJobProvider favoriteJob = Provider.of<FavoriteJobProvider>(context);
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
                    "Favorite",
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
                height: 52,
              ),
              Column(
                children: favoriteJob.favoriteJob
                    .map((fav) => FavoriteJob(fav))
                    .toList(),
              )
              // FavoriteJob(
              //   image: "assets/google_logo.png",
              //   name: "Senior UI Designer",
              //   company: "Google LLC • South Jakarta",
              //   isExpired: false,
              // ),
              // FavoriteJob(
              //   image: "assets/paypal.png",
              //   name: "Product Manager",
              //   company: "Paypal • West Jakarta",
              //   isExpired: false,
              // ),
              // FavoriteJob(
              //   image: "assets/tokped.png",
              //   name: "Staff IT",
              //   company: "Tokopedia • Bandung",
              //   isExpired: false,
              // ),
              // FavoriteJob(
              //   image: "assets/gojek.png",
              //   name: "UX Researcher",
              //   company: "Gojek • Bandung",
              //   isExpired: true,
              // ),
              // FavoriteJob(
              //   image: "assets/airbnb.png",
              //   name: "Backend Developer",
              //   company: "Air B&B • Bandung",
              //   isExpired: false,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
