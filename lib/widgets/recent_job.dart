import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentJob extends StatelessWidget {
  final image;
  final job;
  final company;

  RecentJob({
    required this.image,
    required this.job,
    required this.company,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFFCFCFD),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Color(0xFFE5E5E5),
          width: 1.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            padding: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            child: Center(
              child: Image.asset(
                image,
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
                Text(
                  job,
                  style: GoogleFonts.mulish(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  company,
                  style: GoogleFonts.mulish(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Text(
            "1 Hr Ago",
            style: GoogleFonts.mulish(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF98999F),
            ),
          )
        ],
      ),
    );
  }
}
