import 'package:airplane_booking/shared/theme.dart';
import 'package:flutter/material.dart';

class HyperlinkCustom extends StatelessWidget {
  final String text;
  final Function action;
  final EdgeInsetsGeometry margin;

  const HyperlinkCustom({
    Key? key,
    required this.text,
    required this.action,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: GestureDetector(
        onTap: () => action(),
        child: Text(
          text,
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
