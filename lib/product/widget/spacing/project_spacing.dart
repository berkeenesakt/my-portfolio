import 'package:flutter/material.dart';

/// Utility class for standardized spacing throughout the app
final class ProjectSpacing {
  const ProjectSpacing._();

  // Spacing values
  static const double xxs = 4;
  static const double xs = 12;
  static const double s = 16;
  static const double m = 24;
  static const double l = 32;
  static const double xl = 48;
  static const double xxl = 64;

  // Common spacers
  static SizedBox get spacer => const SizedBox(height: m);
  static SizedBox get spacerHorizontal => const SizedBox(width: m);
}
