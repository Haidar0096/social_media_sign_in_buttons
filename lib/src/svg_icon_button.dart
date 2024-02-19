import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

/// A button that displays an SVG icon.
class SvgIconButton extends StatelessWidget {
  final String svgVectorPath;
  final void Function()? onPressed;
  final ButtonStyle? style;
  final MaterialStatesController? statesController;
  final bool autofocus;
  final Clip clipBehavior;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;
  final ValueChanged<bool>? onHover;
  final VoidCallback? onLongPress;
  final BoxFit? iconFit;

  const SvgIconButton({
    super.key,
    required this.svgVectorPath,
    required this.onPressed,
    this.style,
    this.statesController,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    this.iconFit,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: style,
        statesController: statesController,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        onHover: onHover,
        onLongPress: onLongPress,
        child: SvgPicture(
          AssetBytesLoader(svgVectorPath),
          fit: iconFit ?? BoxFit.contain,
        ),
      );
}
