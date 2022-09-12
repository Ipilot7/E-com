import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/config/constants/local_data.dart';
import 'package:milanas/presentation/components/custom_textfield.dart';
import 'package:milanas/presentation/components/sale_product.dart';
import 'package:milanas/presentation/components/scrolller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    final CarouselController _controller = CarouselController();
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColors.neutralLight, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.7,
                child: CustomTextField(
                    svgUrl: Assets.icons.search, labelText: 'Search Product'),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/favorite');
                  },
                  child: SvgPicture.asset(Assets.icons.love)),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/notificationPage');
                  },
                  child: SvgPicture.asset(Assets.icons.notification))
            ],
          ),
        ),
        Flexible(
          child: ListView(
            children: [
              const SizedBox(height: 16),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/offer');
                  },
                  child: Scroller(list: listWidget)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category', style: AppTextStyles.h5),
                    Text(
                      'More Category',
                      style: AppTextStyles.categoryMore,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(right: 12),
                  itemCount: svgList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12, bottom: 8),
                        padding: const EdgeInsets.all(23),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primaryBlue)),
                        child: SvgPicture.asset(
                          svgList[index],
                        ),
                      ),
                      Text('Manshirt')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 24, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Flash Sale', style: AppTextStyles.h5),
                    Text(
                      'See More',
                      style: AppTextStyles.categoryMore,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 12),
                    itemCount: svgList.length,
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/productDetail');
                        },
                        child: SaleProductWidget())),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 24, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mega Sale', style: AppTextStyles.h5),
                    Text(
                      'See More',
                      style: AppTextStyles.categoryMore,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 12),
                    itemCount: svgList.length,
                    itemBuilder: (context, index) => SaleProductWidget()),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  Assets.images.recom,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
