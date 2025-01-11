import 'package:flutter/material.dart';
import 'package:template/product/widget/text/my_text.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: MyText(text: label),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(999),
      ),
    );
  }
}
