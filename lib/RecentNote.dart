import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notesicon.dart';

class RecentNote extends StatelessWidget {
  final String title, subtitle;
  final String time;
  final IconData icon;
  final Color color;
  final String date;
  RecentNote(
      {this.color, this.icon, this.subtitle, this.title, this.time, this.date});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(_width * 0.001),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NotesIcons(
            color: color,
            icon: icon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.mukta(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: _width * 0.008,
                ),
              ),
              Row(
                children: [
                  Text(
                    date,
                    style: GoogleFonts.mukta(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[900],
                      fontSize: _width * 0.007,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.mukta(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[900],
                      fontSize: _width * 0.006,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
