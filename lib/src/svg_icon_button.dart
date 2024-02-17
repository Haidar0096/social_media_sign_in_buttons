import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

/// A button that displays an SVG icon.
class SvgIconButton extends StatelessWidget {
  final void Function() onPressed;
  final double? width;
  final double? height;
  final String svgVectorPath;

  const SvgIconButton({
    super.key,
    required this.onPressed,
    this.width,
    this.height,
    required this.svgVectorPath,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        child: SvgPicture(
          AssetBytesLoader(svgVectorPath),
          width: width,
          height: height,
        ),
      );
}
