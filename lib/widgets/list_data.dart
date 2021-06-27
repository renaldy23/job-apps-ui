import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListData extends StatelessWidget {
  final String listLabel;
  ListData({required this.listLabel});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF292A2D),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          listLabel,
          style: GoogleFonts.mulish(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xFF98999F),
          ),
        )
      ],
    );
  }
}
