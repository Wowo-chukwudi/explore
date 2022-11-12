import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final String flag;
  final String coatOfArms;

  const ImageSlider({
    Key? key,
    required this.flag,
    required this.coatOfArms,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    List images = [widget.flag, widget.coatOfArms];
    var activeIndex = 0;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(images[0]),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(images[1]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
            height: 200.0,
            enlargeCenterPage: true,
            //enlargeStrategy: CenterPageEnlargeStrategy.height,
            aspectRatio: 1.5,
            enableInfiniteScroll: true,
            viewportFraction: 0.9,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: images.length,
            effect: WormEffect(
                dotHeight: 6, dotWidth: 6, activeDotColor: Color(0xffEAECF0)),
          ),
        ),
      ],
    );
  }
}
