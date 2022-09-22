import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/local_data.dart';


class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
 
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
                  color: _selectedIndex == index ? AppColors.primaryBlue : null,
                ),
                label: menuNames[index]),
          ),
        ),
      ),
    );
  }
}
