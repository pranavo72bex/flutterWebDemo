import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  MenuItem({this.icon, this.title, this.isSelected});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.015,
      child: Row(
        children: [
          SizedBox(
            width: _width * 0.025,
          ),
          Icon(
            icon,
            size: _width * 0.018,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          SizedBox(
            width: _width * 0.01,
          ),
          Text(
            title,
            style: GoogleFonts.mukta(
              fontSize: _width * 0.010,
              color: isSelected ? Colors.blue : Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          isSelected
              ? Container(
                  width: _width * 0.003,
                  height: _width * 0.03,
                  decoration: BoxDecoration(
                    color: Color(0xfff4f5fc),
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
