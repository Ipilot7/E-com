import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/profileWidget.dart';
import 'package:milanas/presentation/pages/account/childpages/changename.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    List profileIcons = [
      Assets.icons.gender,
      Assets.icons.calendar,
      Assets.icons.message,
      Assets.icons.phone,
      Assets.icons.password
    ];
    List profileName = [
      'Gender',
      'Birthday',
      'Email',
      'Phone Number',
      'Change Password'
    ];
    List profileSubtitle = [
      'Male',
      '12-12-2000',
      'rex4demo@gmail.com',
      '(307) 555-0133',
      '*********',
    ];
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomAppbar(text: 'Profile'),
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:
                    Image.asset(Assets.images.avatar, width: 72, height: 72)),
            InkWell(onTap: (){
              Navigator.pushNamed(context, '/changeName');
            },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dominic Ovo',
                    style: AppTextStyles.h5,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '@dominic_ovo',
                    style: AppTextStyles.bodyText,
                  )
                ],
              ),
            )
          ],
        ),
        Column(
          children: List.generate(
            profileIcons.length,
            (index) => InkWell(
              onTap: (){
                Navigator.pushNamed(context, routeName)
              },
              child: ProfileWidget(
                  image: profileIcons[index],
                  name: profileName[index],
                  subName: profileSubtitle[index]),
            ),
          ),
        ),
      ]),
    ));
  }
}
