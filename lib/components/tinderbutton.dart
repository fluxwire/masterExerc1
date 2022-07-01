import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/app_color.dart';
import '../theme/theme.dart';

class TinderButton extends StatelessWidget {
  final String imagemAssetIcon;
  final String buttonLabel;
  final Function()? onPressed;
  const TinderButton({
    Key? key,
    required this.imagemAssetIcon,
    required this.buttonLabel,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: AppTheme.tinderStyle,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ImageIcon(
              AssetImage(imagemAssetIcon),
              color: AppColor.tinderText,
              size: 14,
            ),
          ),
          Center(
            child: Text(
              buttonLabel,
              style: TextStyle(color: AppColor.tinderText),
            ),
          )
        ],
      ),
    );
  }
}
