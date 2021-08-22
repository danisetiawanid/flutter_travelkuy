import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/themes/color_theme.dart';
import 'package:travelkuy/themes/font_style_theme.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  const BottomNavigationTravelkuy({Key? key}) : super(key: key);

  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/icons/home_colored.svg')
                : SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/icons/order_colored.svg')
                : SvgPicture.asset('assets/icons/order.svg'),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/icons/watch_colored.svg')
                : SvgPicture.asset('assets/icons/watch.svg'),
            label: 'Watch List',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/icons/account_colored.svg')
                : SvgPicture.asset('assets/icons/account.svg'),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: onItemTap,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: true,
        elevation: 0,
        unselectedLabelStyle: bottomTextStyle,
        selectedLabelStyle: bottomTextStyle,
      ),
    );
  }
}
