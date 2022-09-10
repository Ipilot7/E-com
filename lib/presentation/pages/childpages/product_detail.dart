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

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List productSize = ['36', '37', '38', '39', '40', '41', '42'];
  List<Color> productColor = [
    Colors.orange,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.green,
    Colors.indigo
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: AppColors.neutralLight, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.chevron_left_rounded)),
                const Text('Nike Air Zoom Pegasus 36 Miyami'),
                SvgPicture.asset(Assets.icons.search),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 230,
                  child: ListView(
                    children: [
                      Scroller(list: imageList),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nike Air Pegasus 36 Miami',
                        style: AppTextStyles.h3,
                      ),
                      SvgPicture.asset(Assets.icons.love)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16, bottom: 16),
                  child: Row(
                    children: List.generate(
                        5, (index) => SvgPicture.asset(Assets.icons.star)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\$299,43',
                      style: AppTextStyles.h3Blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Select size',
                      style: AppTextStyles.h5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                      itemCount: productSize.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.unactTxtColor)),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              productSize[index],
                              style: AppTextStyles.h5,
                            ),
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select color',
                        style: AppTextStyles.h5,
                      )),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                      itemCount: productColor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              color: productColor[index],
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(30),
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16, bottom: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Specification',
                      style: AppTextStyles.h5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Shown'),
                      Text(
                        'Laser\n Blue/Anthracite/Waterme\nlon/White',
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Style:'),
                      Text(
                        'CD0113-400',
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                      'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[Text('Review Product'), Text('See More')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16, bottom: 16),
                  child: Row(
                    children: [
                      Row(
                        children: List.generate(
                            5, (index) => SvgPicture.asset(Assets.icons.star)),
                      ),
                      const Text('  4.5'),
                      const Text(' (5 Review)')
                    ],
                  ),
                ),
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(Assets.images.avatar)),
                    Column(
                      children: [
                        const Text('James Lawson'),
                        Row(
                          children: List.generate(5,
                              (index) => SvgPicture.asset(Assets.icons.star)),
                        ),
                      ],
                    )
                  ],
                ),
                const Text(
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.'),
                Row(
                    children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(Assets.images.crossView),
                  ),
                )),
                const Text('December 10, 2016'),
                const Text('You Might Also Like'),
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
                          child: const SaleProductWidget())),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Add To Cart'))
                //f
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
