import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/models/favorite_job_model.dart';

class FavoriteJob extends StatelessWidget {
  // final String image;
  // final String name;
  // final String company;
  // bool isExpired;

  // FavoriteJob({
  //   required this.image,
  //   required this.name,
  //   required this.company,
  //   required this.isExpired,
  // });
  FavoriteJobModel favoriteJob;
  FavoriteJob(this.favoriteJob);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xFFFCFCFD),
        border: Border.all(
          color: Color(0xFFE5E5E5),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            child: Center(
              child: Image.asset(
                favoriteJob.image,
                width: 32,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        favoriteJob.job,
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF292A2D),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  favoriteJob.company,
                  style: GoogleFonts.mulish(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF292A2D),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
