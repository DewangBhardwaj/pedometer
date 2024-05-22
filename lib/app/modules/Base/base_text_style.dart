import 'package:flutter/material.dart';

abstract class BaseTextStyle {
  static TextStyle primary16w500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFF6a41b4),
    height: 1.5,
  );

  static TextStyle primary13w400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xFF6a41b4),
    height: 1.5,
  );

  static TextStyle primary13w500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: Color(0xFF6a41b4),
    height: 1.5,
  );

  static TextStyle buttonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.white,
    height: 1.5,
  );

  static TextStyle primary15w700 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Color(0xFF6a41b4),
    height: 1.5,
  );

  static TextStyle primary12w400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xFF6a41b4),
    height: 1.5,
  );

  static TextStyle placeHolderText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Color(0xFF2f2f2f),
  );

  static TextStyle black42w500 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Color(0xFF434242),
  );

  static TextStyle placeHolderText11w400 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Color(0xFF8d8c8c),
  );

  static TextStyle placeHolderText14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF8d8c8c),
  );

  static TextStyle sectionHeader = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 15.5, color: Colors.black);

  static TextStyle sectionSubHeader = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 13.5, color: Color(0xFF8d8c8c));
}