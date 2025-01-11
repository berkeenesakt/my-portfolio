import 'package:flutter/material.dart';
import 'package:template/product/widget/padding/project_padding.dart';
import 'package:template/product/widget/radius/project_radius.dart';
import 'package:template/product/widget/shadow/container_shadow.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({required this.content, super.key, this.height, this.gradient = false});
  final bool gradient;
  final double? height;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    const gradientColors = <Color>[
      Color(0xFF1F2937),
      Color(0xFF111827),
    ];
    return Container(
      width: double.infinity,
      height: height,
      padding: ProjectPadding.containerPadding,
      decoration: BoxDecoration(
        gradient: gradient
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [-0.01, 0.99],
                colors: gradientColors,
              )
            : null,
        color: gradient ? null : Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: ProjectRadius.all,
        boxShadow: ContainerShadow.defaultShadow,
      ),
      child: content,
    );
  }
}
