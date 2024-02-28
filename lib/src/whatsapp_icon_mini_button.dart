import 'package:flutter/material.dart';

import 'image_paths.dart';
import 'svg_icon_button.dart';

/// A widget that displays the Whatsapp logo as an SVG icon within a button.
class WhatsappIconMiniButton extends StatelessWidget {
  /// Function called when the button is pressed.
  final void Function()? onPressed;

  /// Optional `ButtonStyle` for the button.
  final ButtonStyle? style;

  /// Optional `MaterialStatesController` for the button.
  final MaterialStatesController? statesController;

  /// Determines if the button should automatically gain focus.
  final bool autofocus;

  /// Determines how the button clips its children.
  final Clip clipBehavior;

  /// Optional `FocusNode` for the button.
  final FocusNode? focusNode;

  /// Optional function called when the button's focus state changes.
  final ValueChanged<bool>? onFocusChange;

  /// Optional function called when a pointer hovers over the button.
  final ValueChanged<bool>? onHover;

  /// Optional function called when the button is long-pressed.
  final VoidCallback? onLongPress;

  /// Optional `BoxFit` for the SVG icon.
  final BoxFit? iconFit;

  const WhatsappIconMiniButton({
    super.key,
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
  Widget build(BuildContext context) => SvgIconButton(
        svgVectorPath: ImagePaths.whatsappLogoIcon,
        onPressed: onPressed,
        style: style,
        statesController: statesController,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        onHover: onHover,
        onLongPress: onLongPress,
        iconFit: iconFit,
      );
}
