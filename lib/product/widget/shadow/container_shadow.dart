import 'package:flutter/material.dart';

/// Container shadow utility class for consistent shadow styling
final class ContainerShadow {
  const ContainerShadow._();

  /// Default shadow opacity
  static const double _defaultOpacity = 0.1;

  /// Default shadow values
  static List<BoxShadow> get defaultShadow => [
        BoxShadow(
          offset: const Offset(0, 8),
          blurRadius: 10,
          spreadRadius: -6,
          color: Colors.black.withOpacity(_defaultOpacity),
        ),
        BoxShadow(
          offset: const Offset(0, 20),
          blurRadius: 25,
          spreadRadius: -5,
          color: Colors.black.withOpacity(_defaultOpacity),
        ),
      ];
}
