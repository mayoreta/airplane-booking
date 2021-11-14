import 'package:airplane_booking/shared/theme.dart';
import 'package:airplane_booking/ui/widgets/destination_card.dart';
import 'package:airplane_booking/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        topDestination(),
        newDestination(),
      ],
    );
  }

  Container newDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            children: [
              DestinationTile(
                title: 'Danau Beratan',
                location: 'Singajara',
                imageUrl: 'assets/images/image_destination6.png',
                rating: 4.5,
                action: () {},
              ),
              DestinationTile(
                title: 'Sydney Opera',
                location: 'Australia',
                imageUrl: 'assets/images/image_destination7.png',
                rating: 4.7,
                action: () {},
              ),
              DestinationTile(
                title: 'Roma',
                location: 'Italy',
                imageUrl: 'assets/images/image_destination8.png',
                rating: 4.8,
                action: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Container topDestination() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              title: 'Lake Ciliwung',
              location: 'Tangerang',
              imageUrl: 'assets/images/image_destination1.png',
              rating: 4.8,
              action: () {},
            ),
            DestinationCard(
              title: 'White Houses',
              location: 'Spain',
              imageUrl: 'assets/images/image_destination2.png',
              rating: 4.7,
              action: () {},
            ),
            DestinationCard(
              title: 'Hill Heyo',
              location: 'Monaco',
              imageUrl: 'assets/images/image_destination3.png',
              rating: 4.8,
              action: () {},
            ),
            DestinationCard(
              title: 'Menarra',
              location: 'Japan',
              imageUrl: 'assets/images/image_destination4.png',
              rating: 5,
              action: () {},
            ),
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Singapore',
              imageUrl: 'assets/images/image_destination5.png',
              rating: 4.8,
              action: () {},
            ),
          ],
        ),
      ),
    );
  }

  Container header() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Kezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/image_profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
