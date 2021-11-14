import 'package:airplane_booking/shared/theme.dart';
import 'package:airplane_booking/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardSection(),
            infoSection(),
            buttonSection(context),
          ],
        ),
      ),
    );
  }

  ButtonCustom buttonSection(BuildContext context) {
    return ButtonCustom(
      action: () => Navigator.pushNamed(context, '/main'),
      margin: const EdgeInsets.only(top: 64),
      width: 220,
      text: 'Start Fly Now',
    );
  }

  Container infoSection() {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Text(
            'Big Bonus 🎉',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'We give you early credit so that\nyou can buy a flight ticket',
            textAlign: TextAlign.center,
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }

  Container cardSection() {
    return Container(
      width: 300,
      height: 200,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/image_card.png'),
        ),
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.5),
            blurRadius: 50,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'Kezia Anne',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 24,
                width: 24,
                margin: const EdgeInsets.only(right: 6),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/icon_plane.png'),
                  ),
                ),
              ),
              Text(
                'Pay',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 41,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
          Text(
            'IDR 280.000.000',
            style: whiteTextStyle.copyWith(
              fontSize: 26,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
