import 'package:flutter/material.dart';

/// Project general border radius items
final class ProjectRadius extends BorderRadius {
  const ProjectRadius() : super.only();

  /// Default radius value
  static const double _defaultRadius = 24;

  /// All corners radius with default 24
  static BorderRadius get all => BorderRadius.circular(_defaultRadius);

  /// Only top corners radius with default 24
  static BorderRadius get onlyTop => const BorderRadius.vertical(
        top: Radius.circular(_defaultRadius),
      );

  /// Only bottom corners radius with default 24
  static BorderRadius get onlyBottom => const BorderRadius.vertical(
        bottom: Radius.circular(_defaultRadius),
      );

  /// Custom radius for all corners
  static BorderRadius circular(double radius) => BorderRadius.circular(radius);

  /// Horizontal radius (left and right corners)
  static BorderRadius get horizontal => const BorderRadius.horizontal(
        left: Radius.circular(_defaultRadius),
        right: Radius.circular(_defaultRadius),
      );
}
