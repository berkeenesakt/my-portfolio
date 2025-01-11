import 'package:flutter/material.dart';
import 'package:template/product/widget/padding/project_padding.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });

  final void Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(999),
        ),
        padding: ProjectPadding.all,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
