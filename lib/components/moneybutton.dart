import 'package:flutter/material.dart';
import '../theme/app_color.dart';
import '../theme/theme.dart';

class MoneyButton extends StatelessWidget {
  final String imagemAssetIcon;
  final String buttonLabel;
  final Function()? onPressed;
  const MoneyButton({
    Key? key,
    required this.imagemAssetIcon,
    required this.buttonLabel,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: AppTheme.flatButtonStyleWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imagemAssetIcon),
            fit: BoxFit.scaleDown,
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            buttonLabel,
            style: const TextStyle(
              color: AppColor.colorText,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
