import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'file:///C:/Users/a4kas/Desktop/consequences/lib/screens/videodetails.dart';

import 'screens/homepage.dart';

void main() {
  runApp(

    MaterialApp(
      title: "Consequences",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: GoogleFonts.robotoCondensedTextTheme()),
    ),
  );
}
