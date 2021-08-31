import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelkuy/models/travlog_model.dart';
import 'package:travelkuy/themes/font_style_theme.dart';

class Travlog extends StatelessWidget {
  const Travlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      padding: EdgeInsets.only(left: 16),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: travlogs.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 16),
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image:
                                  AssetImage(travlogs[index].image.toString()),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: SvgPicture.asset(
                            'assets/svg/travlog_top_corner.svg'),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: SvgPicture.asset(
                            'assets/svg/travelkuy_logo_white.svg'),
                      ),
                      Positioned(
                        bottom: 0,
                        child: SvgPicture.asset(
                            'assets/svg/travlog_bottom_gradient.svg'),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Text(
                          'Travlog ' + travlogs[index].name.toString(),
                          style: mTravlogTitleStyle,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    travlogs[index].content.toString(),
                    style: mTravlogContentStyle,
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    travlogs[index].place.toString(),
                    style: mTravlogPlaceStyle,
                  )
                ],
              ),
            );
          }),
    );
  }
}
