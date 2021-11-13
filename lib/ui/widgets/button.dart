import 'package:airplane_booking/shared/theme.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  final Function action;

  const ButtonCustom({
    Key? key,
    required this.action,
    required this.text,
    this.width = double.infinity,
    this.height = 55,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: () => action(),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
