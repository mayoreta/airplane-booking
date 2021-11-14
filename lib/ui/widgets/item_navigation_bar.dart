import 'package:airplane_booking/shared/theme.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemNavigationBarCustom extends StatelessWidget {
  final String asset;
  final bool isActive;
  final Function action;
  final bool notification;

  const ItemNavigationBarCustom({
    Key? key,
    required this.asset,
    this.isActive = false,
    required this.action,
    this.notification = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 24,
            height: 24,
            margin: const EdgeInsets.only(top: 18),
            child: Badge(
              showBadge: notification,
              badgeColor: kRedColor,
              position: const BadgePosition(
                top: -4,
                end: -4,
              ),
              child: SvgPicture.asset(
                asset,
                color: isActive ? kPrimaryColor : kGreyColor,
              ),
            ),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: isActive ? kPrimaryColor : kTransparentColor,
            ),
          )
        ],
      ),
    );
  }
}
