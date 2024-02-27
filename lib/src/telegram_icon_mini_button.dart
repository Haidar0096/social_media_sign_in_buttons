import 'package:flutter/material.dart';

import 'image_paths.dart';
import 'svg_icon_button.dart';

/// Telegram icon mini button.
class TelegramIconMiniButton extends StatelessWidget {
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

  const TelegramIconMiniButton({
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
    svgVectorPath: ImagePaths.telegramLogoIcon,
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