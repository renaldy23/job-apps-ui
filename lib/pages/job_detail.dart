import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobby/widgets/list_data.dart';

class JobDetail extends StatefulWidget {
  final String image;
  final String job;
  final String company;
  final String number;
  final String applicants;
  JobDetail({
    required this.image,
    required this.job,
    required this.company,
    required this.number,
    required this.applicants,
  });

  bool isFavorite = false;
  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 60,
                  right: 30,
                  bottom: 42,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/arrow.png",
                        width: 20,
                      ),
                    ),
                    Text(
                      "Job Detail",
                      style: GoogleFonts.mulish(
                          fontSize: 18, fontWeight: FontWeight.w600),
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
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      padding: EdgeInsets.all(21),
                      decoration: BoxDecoration(
                        color: Color(0xFFFCFCFD),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                      child: Image.asset(
                        widget.image,
                        width: 57,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.job,
                      style: GoogleFonts.mulish(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(widget.company,
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 354,
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                padding: EdgeInsets.only(
                  left: 14,
                  right: 14,
                  top: 18,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFD),
                  border: Border.all(
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$${widget.number}k/mo",
                            style: GoogleFonts.mulish(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Salary",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              color: Color(0xFF98999F),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      VerticalDivider(
                        color: Color(0xFFE5E5E5),
                        thickness: 1.5,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Text(
                            widget.applicants,
                            style: GoogleFonts.mulish(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Applicants",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              color: Color(0xFF98999F),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      VerticalDivider(
                        color: Color(0xFFE5E5E5),
                        thickness: 1.5,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Text(
                            "Onsite",
                            style: GoogleFonts.mulish(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Job Type",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              color: Color(0xFF98999F),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5284E3),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xFFE5E5E5),
                thickness: 1.25,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job Description",
                      style: GoogleFonts.mulish(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor.",
                      style: GoogleFonts.mulish(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF98999F),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Job Responsibilities",
                      style: GoogleFonts.mulish(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListData(
                      listLabel: "Lorem ipsum dolor sit amet, consectetur.",
                    ),
                    ListData(
                      listLabel: "purus sit amet luctus venenatis",
                    ),
                    ListData(
                      listLabel: "lectus magna fringilla urna, porttitor",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 54,
                      margin: EdgeInsets.only(bottom: 30),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF5284E3),
                        ),
                        child: Text(
                          "Apply Now",
                          style: GoogleFonts.mulish(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
