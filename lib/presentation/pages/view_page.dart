import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/pages/explore.dart';
import 'package:milanas/presentation/pages/home.dart';
import 'package:milanas/presentation/pages/childpages/offer.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List<Widget> pages = [
    Home(),
    Explore(),
    Home(),
    Home(),
    Home(),
  ];
  List<String> menuIcons = [
    Assets.icons.home,
    Assets.icons.search,
    Assets.icons.cart,
    Assets.icons.offer,
    Assets.icons.user
  ];
  List<String> menuNames = [
    'Home',
    'Explore',
    'Cart',
    'Offer',
    'Account',
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primaryBlue,
            unselectedItemColor: AppColors.unactTxtColor,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: List.generate(
              menuNames.length,
              (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    menuIcons[index],
                    color:
                        _selectedIndex == index ? AppColors.primaryBlue : null,
                  ),
                  label: menuNames[index]),
            )),
      ),
    );
  }
}
