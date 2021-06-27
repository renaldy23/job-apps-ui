import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverJob extends StatefulWidget {
  final String image;
  final String title;
  final String company;
  final String numbers;
  bool isFavorite = false;
  DiscoverJob({
    required this.image,
    required this.title,
    required this.company,
    required this.numbers,
  });

  @override
  _DiscoverJobState createState() => _DiscoverJobState();
}

class _DiscoverJobState extends State<DiscoverJob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
        right: 20,
        bottom: 21,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCFCFD),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Color(0xFFE5E5E5),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    widget.image,
                    width: 40,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!widget.isFavorite) {
                    setState(() {
                      widget.isFavorite = true;
                    });
                  } else {
                    setState(() {
                      widget.isFavorite = false;
                    });
                  }
                },
                child: Image.asset(
                  widget.isFavorite
                      ? "assets/favorite_active.png"
                      : "assets/favorite.png",
                  width: 26,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            widget.title,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.company,
            style: GoogleFonts.mulish(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 41,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "10 June 2021",
                style: GoogleFonts.mulish(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF98999F),
                ),
              ),
              Text(
                "Onsite • \$${widget.numbers}k/mo",
                style: GoogleFonts.mulish(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF292A2D),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
