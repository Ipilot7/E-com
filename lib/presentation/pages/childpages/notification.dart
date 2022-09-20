import 'package:flutter/material.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/notification_help_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    List notifCategList = [
      Assets.icons.offer,
      Assets.icons.paper,
      Assets.icons.notification
    ];
    List notifCategNameList = ['Offer', 'Feed', 'Activity'];

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const CustomAppbar(text: 'Notification'),
          Column(
            children: List.generate(
              notifCategNameList.length,
              (index) => GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, '/offer');
                      break;
                    case 1:
                      Navigator.pushNamed(context, '/feed');
                      break;
                    case 2:
                      Navigator.pushNamed(context, '/activity');
                      break;
                    default:
                      null;
                  }
                },
                child: NotificationsWidget(
                  icon: notifCategList[index],
                  typeNotification: notifCategNameList[index],
                  countNotifications: '0',
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
