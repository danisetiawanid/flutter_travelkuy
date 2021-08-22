import 'package:flutter/material.dart';
import 'package:travelkuy/models/popular_destination_model.dart';
import 'package:travelkuy/themes/color_theme.dart';
import 'package:travelkuy/themes/font_style_theme.dart';

class PopularDestinations extends StatelessWidget {
  const PopularDestinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16, right: 16),
          itemCount: populars.length,
          itemBuilder: (contex, index) {
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: 140,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: mBorderColor)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Column(
                    children: [
                      Image.asset(
                        populars[index]!.image.toString(),
                        height: 74,
                      ),
                      Text(
                        populars[index]!.name.toString(),
                        style: mPopularDestinationTitleStyle,
                      ),
                      Text(
                        populars[index]!.country.toString(),
                        style: mPopularDestinationSubtitleStyle,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
