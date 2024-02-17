import 'package:flutter/material.dart';

import 'image_paths.dart';
import 'svg_icon_button.dart';

class AppleSignInMiniButton extends StatelessWidget {
  final void Function() onPressed;

  const AppleSignInMiniButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => SvgIconButton(
        onPressed: onPressed,
        svgVectorPath: ImagePaths.appleSignInButtonIcon,
      );
}
