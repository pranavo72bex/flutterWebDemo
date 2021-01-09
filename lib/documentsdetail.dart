import 'package:flutter/material.dart';

import 'button.dart';

class DocumentsDetail extends StatefulWidget {
  @override
  _DocumentsDetailState createState() => _DocumentsDetailState();
}

class _DocumentsDetailState extends State<DocumentsDetail> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Icon(
            Icons.check_box_outlined,
            color: Colors.black,
            size: _width * 0.017,
          ),
          SizedBox(
            width: _width * 0.003,
          ),
          Icon(
            Icons.folder_open_outlined,
            color: Colors.black,
            size: _width * 0.017,
          ),
          SizedBox(
            width: _width * 0.005,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "myDocument",
                style: TextStyle(
                  fontSize: _width * 0.009,
                ),
              ),
              Text(
                "open 13 weeks ago",
                style: TextStyle(
                    fontSize: _width * 0.007, color: Colors.grey[700]),
              ),
            ],
          ),
          Spacer(),
          Buttons(
            text: "Upload",
          ),
          SizedBox(
            width: _width * 0.005,
          ),
          Buttons(
            text: "Download",
          ),
        ],
      ),
    );
  }
}
