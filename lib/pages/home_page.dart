import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:travelkuy/models/carousel_model.dart';
import 'package:travelkuy/themes/color_theme.dart';
import 'package:travelkuy/themes/font_style_theme.dart';
import 'package:travelkuy/widgets/booking_card_widget.dart';
import 'package:travelkuy/widgets/bottom_navigation_widget.dart';
import 'package:travelkuy/widgets/popular_destionation_widger.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 24),
              child: Text(
                'Hi, Dani This Promos for You !',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(
                                    carousels[index]!.image.toString()),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: map(carousels, (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _current == index ? mBlueColor : mGreyColor),
                        );
                      })),
                      Text(
                        'More...',
                        style: mMoreDiscountStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              child: Text(
                "Let's Booking !",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      BookingCard(
                        svgUrl: 'assets/svg/service_flight_icon.svg',
                        serviceTitle: 'Flight',
                        serviceSubtitle: 'Feel Freedom',
                      ),
                      BookingCard(
                        svgUrl: 'assets/svg/service_train_icon.svg',
                        serviceTitle: 'Trains',
                        serviceSubtitle: 'Intercity',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      BookingCard(
                        svgUrl: 'assets/svg/service_hotel_icon.svg',
                        serviceTitle: 'Hotel',
                        serviceSubtitle: "Let's take a break !",
                      ),
                      BookingCard(
                        svgUrl: 'assets/svg/service_car_rental_icon.svg',
                        serviceTitle: 'Car Rental',
                        serviceSubtitle: 'Around the city',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              child: Text(
                "Popular Destination !",
                style: mTitleStyle,
              ),
            ),
            PopularDestinations()
          ],
        ),
      ),
    );
  }
}
