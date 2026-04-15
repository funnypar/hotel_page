import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_page/gen/assets.gen.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(20, 38, 0, 0),
        decoration: BoxDecoration(
          color: themeData.colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 40,
        height: 40,
        child: Icon(CupertinoIcons.back, color: Colors.grey, size: 20),
      ),
      backgroundColor: themeData.colorScheme.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Assets.img.hotel.image(
                      width: MediaQuery.of(context).size.width,
                      height: 340,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Assets.icons.heart.svg(width: 24, height: 23),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coeurdes Alpes',
                          style: themeData.textTheme.headlineMedium,
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Color(0xffDF9652),
                              size: 13,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '4.5 (355 Reviews)',
                              style: themeData.textTheme.bodySmall!.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show map',
                      style: themeData.textTheme.bodyLarge!.apply(
                        color: themeData.colorScheme.secondary,
                        fontSizeFactor: 0.55,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
                style: themeData.textTheme.bodyMedium,
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Read more',
                          style: themeData.textTheme.bodyMedium!.apply(
                            color: themeData.colorScheme.secondary,
                            fontWeightDelta: 2,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.arrow_down_circle,
                          color: themeData.colorScheme.secondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 16),
                child: Text(
                  'Facilities',
                  style: themeData.textTheme.headlineSmall,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 74,
                      decoration: BoxDecoration(
                        color: themeData.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.wifi.svg(width: 32, height: 32),
                          SizedBox(height: 4),
                          Text(
                            '1 Heater',
                            style: themeData.textTheme.bodySmall!.apply(
                              fontWeightDelta: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 74,
                      decoration: BoxDecoration(
                        color: themeData.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.dinner.svg(width: 32, height: 32),
                          SizedBox(height: 4),
                          Text(
                            'Dinner',
                            style: themeData.textTheme.bodySmall!.apply(
                              fontWeightDelta: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 77,
                      height: 74,
                      decoration: BoxDecoration(
                        color: themeData.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.bath.svg(width: 32, height: 32),
                          SizedBox(height: 4),
                          Text(
                            '1 HTub',
                            style: themeData.textTheme.bodySmall!.apply(
                              fontWeightDelta: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 77,
                      height: 74,
                      decoration: BoxDecoration(
                        color: themeData.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.pool.svg(width: 32, height: 32),
                          SizedBox(height: 4),
                          Text(
                            'Pool',
                            style: themeData.textTheme.bodySmall!.apply(
                              fontWeightDelta: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 48),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price', style: themeData.textTheme.titleSmall),
                      SizedBox(height: 8),
                      Text(
                        '\$199',
                        style: themeData.textTheme.bodyLarge!.apply(
                          color: Color(0xff2DD7A4),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                        EdgeInsets.fromLTRB(72, 24, 72, 24),
                      ),
                      elevation: WidgetStateProperty.all(10),
                      shadowColor: WidgetStateProperty.all(Colors.black54),
                    ),
                    child: Row(
                      children: [
                        Text('Book Now'),
                        SizedBox(width: 8),
                        Icon(CupertinoIcons.arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
