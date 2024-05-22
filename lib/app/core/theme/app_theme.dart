import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme{
  ThemeData get lightTheme{
    return ThemeData(
      iconTheme: IconThemeData(color: Color(0xFF2f2f2f)),
      shadowColor: const Color.fromARGB(255, 186, 218, 234),
      primaryColorDark: Color.fromARGB(255, 255, 255, 255),
      primaryColor: const Color(0xFFA0DDFF));
  }

  ThemeData get darkTheme{
    return ThemeData(
      primaryColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

final appThemeProvider = Provider<AppTheme>((_) => AppTheme());