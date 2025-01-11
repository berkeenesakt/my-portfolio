import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/product/init/theme/custom_color_scheme.dart';

final class CustomTheme {
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
        scaffoldBackgroundColor: const Color(0xFF111827),
        colorScheme: CustomColorScheme.colorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();
}
