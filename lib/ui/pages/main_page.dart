import 'package:airplane_booking/shared/theme.dart';
import 'package:airplane_booking/ui/widgets/item_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(
                bottom: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ItemNavigationBarCustom(
                    asset: 'assets/icons/fi_globe.svg',
                    action: () {},
                    isActive: true,
                  ),
                  ItemNavigationBarCustom(
                    asset: 'assets/icons/fi_book_open.svg',
                    action: () {},
                    notification: true,
                  ),
                  ItemNavigationBarCustom(
                    asset: 'assets/icons/fi_card.svg',
                    action: () {},
                  ),
                  ItemNavigationBarCustom(
                    asset: 'assets/icons/fi_settings.svg',
                    action: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
