import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(text: 'Feed'),
            Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  Assets.images.cross,
                                  width: 48,
                                  height: 48,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New Product',
                                      style: AppTextStyles.h5,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                                      style: AppTextStyles.bodyText,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'June 3, 2015 5:06 PM',
                                      style: AppTextStyles.captionNormalRegular,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
