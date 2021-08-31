import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/themes/color_theme.dart';
import 'package:travelkuy/themes/font_style_theme.dart';

class BookingCard extends StatelessWidget {
  final String? svgUrl;
  final String? serviceTitle;
  final String? serviceSubtitle;

  const BookingCard({
    Key? key,
    this.svgUrl,
    this.serviceTitle,
    this.serviceSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.only(left: 16),
        height: 64,
        decoration: BoxDecoration(
          color: mFillColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: mBorderColor, width: 1),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgUrl!,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    serviceTitle!,
                    style: mServiceTitleStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    serviceSubtitle!,
                    style: mServiceSubtitleStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
