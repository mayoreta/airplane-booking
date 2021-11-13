import 'package:airplane_booking/shared/theme.dart';
import 'package:flutter/material.dart';

class InputTextCustom extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final EdgeInsetsGeometry margin;

  const InputTextCustom({
    Key? key,
    required this.title,
    this.hintText = '',
    this.obscureText = false,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(
                  color: kInactiveColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
