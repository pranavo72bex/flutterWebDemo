import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  Button({this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.025,
      width: _width * 0.08,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(_width * 0.008),
      ),
      alignment: Alignment.center,
      child: Text(text,
          style: GoogleFonts.mukta(
              color: Colors.white,
              fontSize: _width * 0.009,
              fontWeight: FontWeight.w700)),
    );
  }
}
