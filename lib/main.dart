import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RecentNote.dart';
import 'button.dart';
import 'buttons.dart';
import 'documentsdetail.dart';
import 'menu_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      child: Container(
        color: Colors.white.withOpacity(0.7),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: _width * 0.05,
            vertical: _width * 0.025,
          ),
          height: _width * 0.6,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff4f5fc),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_width * 0.03),
                        bottomLeft: Radius.circular(_width * 0.03),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: _width * 0.01),
                            Text(
                              "FeatherUI",
                              style: GoogleFonts.mukta(
                                fontSize: _width * 0.018,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        MenuItem(
                            icon: Icons.dashboard,
                            title: "Dashboard",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "Menu 01",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "Menu 02",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "Menu 03",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "Menu 04",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "menu 05",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "menu 06",
                            isSelected: false),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "menu 07",
                            isSelected: true),
                        MenuItem(
                            icon: Icons.menu_book,
                            title: "menu 08",
                            isSelected: false),
                        Button(
                          text: "settings",
                        ),
                      ],
                    )),
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: _width * 0.03,
                      vertical: _width * 0.02,
                    ),
                    color: Color(0xfff4f5fc).withOpacity(0.8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: _width * 0.009,
                              ),
                            ),
                            Text(
                              "/",
                              style: TextStyle(
                                fontSize: _width * 0.009,
                              ),
                            ),
                            Text(
                              "List Page",
                              style: TextStyle(
                                fontSize: _width * 0.009,
                              ),
                            ),
                            Text(
                              "/",
                              style: TextStyle(
                                fontSize: _width * 0.009,
                              ),
                            ),
                            Text(
                              "Single Page",
                              style: TextStyle(
                                  fontSize: _width * 0.009,
                                  color: Colors.blue[900]),
                            ),
                            Spacer(),
                            Container(
                                height: _width * 0.025,
                                width: _width * 0.17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    _width * 0.012,
                                  ),
                                  color: Colors.grey[300],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: _width * 0.005,
                                    ),
                                    Icon(
                                      Icons.search,
                                      size: _width * 0.015,
                                      color: Colors.grey[900],
                                    ),
                                    SizedBox(
                                      width: _width * 0.003,
                                    ),
                                    Text(
                                      "Search",
                                      style: GoogleFonts.mukta(
                                        color: Colors.grey[900],
                                        fontSize: _width * 0.012,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                )),
                            Spacer(),
                            Icon(
                              Icons.notifications_active_rounded,
                              size: _width * 0.015,
                            ),
                            Spacer(),
                            Icon(
                              Icons.message_rounded,
                              size: _width * 0.015,
                            ),
                            Spacer(),
                            Icon(
                              Icons.supervised_user_circle_rounded,
                              size: _width * 0.02,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          height: _width * 0.035,
                          width: _width * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(
                              _width * 0.008,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your Card has been expired.Please view the application section for details",
                                style: TextStyle(
                                  fontSize: _width * 0.009,
                                ),
                              ),
                              Buttons(
                                text: "View Now",
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sub Menu 01",
                                  style: GoogleFonts.mukta(
                                    fontSize: _width * 0.01,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: _width * 0.02,
                                ),
                                Text(
                                  "Sub Menu 02",
                                  style: GoogleFonts.mukta(
                                    fontSize: _width * 0.01,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: _width * 0.02,
                                ),
                                Text(
                                  "Sub Menu 03",
                                  style: GoogleFonts.mukta(
                                    fontSize: _width * 0.01,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          height: _width * 0.035,
                          width: _width * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              _width * 0.008,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Documents\nPlease upload your documets",
                                style: TextStyle(
                                  fontSize: _width * 0.009,
                                ),
                              ),
                              Spacer(),
                              Buttons(
                                text: "Upload Documents",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.folder,
                                color: Colors.yellow,
                                size: _width * 0.017,
                              ),
                              Text(
                                "myDocument",
                                style: TextStyle(
                                  fontSize: _width * 0.009,
                                ),
                              ),
                              SizedBox(
                                width: _width * 0.01,
                              ),
                              Icon(
                                Icons.folder,
                                color: Colors.yellow,
                                size: _width * 0.015,
                              ),
                              Text(
                                "DocumentShare",
                                style: TextStyle(
                                  fontSize: _width * 0.009,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.black,
                                size: _width * 0.017,
                              ),
                              Text(
                                "Download all",
                                style: TextStyle(
                                  fontSize: _width * 0.009,
                                ),
                              ),
                            ],
                          ),
                        ),
                        DocumentsDetail(),
                        DocumentsDetail(),
                        DocumentsDetail(),
                        DocumentsDetail(),
                        DocumentsDetail(),
                        DocumentsDetail()
                      ],
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff4f5fc),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        _width * 0.03,
                      ),
                      bottomRight: Radius.circular(
                        _width * 0.03,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: _width * 0.002,
                      ),
                      Row(
                        children: [
                          Button(
                            text: "Call to Action ",
                          ),
                          SizedBox(
                            width: _width * 0.02,
                          ),
                          Buttons(
                            text: "Support",
                          ),
                          SizedBox(
                            width: _width * 0.003,
                          ),
                        ],
                      ),
                      Container(
                        width: _width * 0.22,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: _width * 0.015,
                                  backgroundImage: NetworkImage(
                                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.more_horiz,
                                      size: _width * 0.015,
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                            SizedBox(
                              height: _width * 0.003,
                            ),
                            Text(
                              "FeatherWebs Inc",
                              style: TextStyle(
                                  fontSize: _width * 0.009,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "256 Priscilla Dale Suite 602\nchristy_cartwright@yahoo.com\n140-085-4934",
                              style: TextStyle(
                                  fontSize: _width * 0.007,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: _width * 0.002,
                            ),
                            Button(
                              text: "Main button",
                            ),
                            SizedBox(
                              height: _width * 0.003,
                            ),
                            Text(
                              "Date of Registration",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: _width * 0.007,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "18/09/2018",
                              style: TextStyle(
                                  fontSize: _width * 0.007,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _width * 0.003,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: _width * 0.015,
                                  backgroundImage: NetworkImage(
                                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                                SizedBox(
                                  height: _width * 0.003,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "John Maharjan",
                                      style: TextStyle(
                                          fontSize: _width * 0.009,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ziftufig@ipohimuh.nz\n15085399330",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: _width * 0.007,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: _width * 0.22,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recent Notes",
                                  style: GoogleFonts.mukta(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: _width * 0.015,
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      size: _width * 0.015,
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                            RecentNote(
                              color: Colors.blue,
                              icon: Icons.edit,
                              title:
                                  " Fragrances can often reflect our mood and personality",
                              subtitle: "Advanced",
                              time: " 9:07",
                              date: " 18/10/2019",
                            ),
                            RecentNote(
                              color: Colors.green,
                              icon: Icons.edit,
                              title:
                                  " Business cards represent not only your business",
                              subtitle: "Advanced",
                              time: " 9:47",
                              date: " 5/1/2021",
                            ),
                            RecentNote(
                              color: Colors.red,
                              icon: Icons.edit,
                              title:
                                  " I hate peeping Toms. For one thing they usually step\n all over the ",
                              subtitle: "Advanced",
                              time: " 9:40",
                              date: " 18/10/2020",
                            ),
                            RecentNote(
                              color: Colors.yellow,
                              icon: Icons.edit,
                              title:
                                  " Classified adverting is a form of adverting\n that is particularly",
                              subtitle: "Advanced",
                              time: " 9:57",
                              date: " 18/10/2020",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
