import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  Buttons({this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.025,
      width: _width * 0.08,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            _width * 0.008,
          ),
          border: Border.all(color: Colors.blue)),
      alignment: Alignment.center,
      child: Text(text,
          style: GoogleFonts.mukta(
              color: Colors.blue,
              fontSize: _width * 0.009,
              fontWeight: FontWeight.bold)),
    );
  }
}
