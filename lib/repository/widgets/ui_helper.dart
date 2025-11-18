import 'package:chatapp_ui/domain/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static customText({
    required BuildContext context,
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkMode
                : AppColors.textLightMode),
      ),
    );
  }

  static customButton({
    required String text,
    required VoidCallback callback,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
