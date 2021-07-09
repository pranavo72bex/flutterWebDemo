import 'package:flutter/material.dart';

class NotesIcons extends StatelessWidget {
  final Color color;
  final IconData icon;
  NotesIcons({this.color, this.icon});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: _width * 0.03,
      width: _width * 0.03,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(_width * 0.008),
      ),
      child: Icon(
        icon,
        color: color,
        size: _width * 0.02,
      ),
    );
  }
}
