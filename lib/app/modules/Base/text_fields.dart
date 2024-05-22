import 'package:flutter/material.dart';
import 'package:cardio_credits/app/modules/Base/base_text_style.dart';

Widget textFiels(BuildContext context, String hint, {Widget? icons}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5),
    height: MediaQuery.of(context).size.height * 0.07,
    width: MediaQuery.of(context).size.width * 1,
    decoration: BoxDecoration(
      color: Color(0xFFCECCCC),
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    ),
    child: Center(
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: icons,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: BaseTextStyle.placeHolderText),
      ),
    ),
  );
}