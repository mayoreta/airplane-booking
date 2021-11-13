import 'package:airplane_booking/shared/theme.dart';
import 'package:airplane_booking/ui/widgets/button.dart';
import 'package:airplane_booking/ui/widgets/hyperlink.dart';
import 'package:airplane_booking/ui/widgets/input_text.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacSection(),
          ],
        ),
      ),
    );
  }

  HyperlinkCustom tacSection() {
    return HyperlinkCustom(
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 73,
      ),
      action: () {},
      text: 'Terms and Conditions',
    );
  }

  Container inputSection() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          const InputTextCustom(
            margin: EdgeInsets.only(bottom: 20),
            title: 'Full Name',
            hintText: 'Your full name',
          ),
          const InputTextCustom(
            margin: EdgeInsets.only(bottom: 20),
            title: 'Email Address',
            hintText: 'Your email address',
          ),
          const InputTextCustom(
            margin: EdgeInsets.only(bottom: 20),
            title: 'Password',
            hintText: 'Your password',
          ),
          const InputTextCustom(
            margin: EdgeInsets.only(bottom: 30),
            title: 'Hobby',
            hintText: 'Your hobby',
          ),
          ButtonCustom(
            action: () {},
            text: 'Get Started',
          ),
        ],
      ),
    );
  }

  Container title() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
