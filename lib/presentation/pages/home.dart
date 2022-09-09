import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/clock.dart';
import 'package:milanas/presentation/components/custom_textfield.dart';
import 'package:milanas/presentation/components/sale_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List svgList = [
    Assets.icons.shirt,
    Assets.icons.skirt,
    Assets.icons.bag,
    Assets.icons.dress,
    Assets.icons.manbag,
    Assets.icons.bikiniti,
    Assets.icons.manpants,
    Assets.icons.manshoes,
    Assets.icons.manunderwear,
    Assets.icons.womanbag,
    Assets.icons.womanpants,
    Assets.icons.womanshoes,
    Assets.icons.womantshirt,
  ];
  List<Widget> listWidget = <Widget>[
    SaleWidget(),
    SaleWidget(),
    SaleWidget(),
    SaleWidget(),
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: AppColors.neutralLight, width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.7,
                    child: CustomTextField(
                        svgUrl: Assets.icons.search,
                        labelText: 'Search Product'),
                  ),
                  SvgPicture.asset(Assets.icons.love),
                  SvgPicture.asset(Assets.icons.notification)
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  CarouselSlider(
                    items: listWidget,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: listWidget.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : AppColors.primaryBlue)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
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
                  SizedBox(height: 12),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(right: 12),
                      itemCount: svgList.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 12, bottom: 8),
                            padding: EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.primaryBlue)),
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
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(right: 12),
                        itemCount: svgList.length,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(left: 16),
                              width: 141,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColors.unactTxtColor,
                                      width: 1)),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(Assets.images.cross),
                                  Text(
                                    'FS - Nike Air Max 270 React ..',
                                    style: AppTextStyles.h6,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('\$299,43',
                                        style: AppTextStyles.moneyBlue),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$534',
                                        style: AppTextStyles.bodyText,
                                      ),
                                      Text(
                                        '24% Off',
                                        style: AppTextStyles.moneyRed,
                                      ),
                                      Container()
                                    ],
                                  )
                                ],
                              ),
                            )),
                  ),

                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
