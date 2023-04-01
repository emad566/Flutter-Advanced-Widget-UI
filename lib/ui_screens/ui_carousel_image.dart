import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_widget_ui/shared/components.dart';

class UiCarouselImage extends StatefulWidget {
  const UiCarouselImage({Key? key}) : super(key: key);

  @override
  State<UiCarouselImage> createState() => _UiCarouselImageState();
}

class _UiCarouselImageState extends State<UiCarouselImage> {

  List<String> imgList = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg'
  ];

  String imgTitle = 'Vertical Carousel';
  int currentSliderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                myText('Horizontal'),
                CarouselSlider(
                  items: imgList.map((imgUrl) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(imgUrl, fit: BoxFit.fill,),
                  )).toList(),
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                  ),
                ),
                const SizedBox(height: 10,),
                myText(imgTitle),
                CarouselSlider.builder(
                  itemCount: imgList.length,
                  itemBuilder: (BuildContext context, int index, int realIndex){
                    return SizedBox(
                      width: double.infinity,
                      // margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(imgList[index]),
                    );
                  },
                  options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 1),
                    enableInfiniteScroll: true,
                    pauseAutoPlayOnTouch: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (int index, CarouselPageChangedReason reason){
                      setState(() {
                        imgTitle = imgList[index];
                        currentSliderIndex = index;
                      });
                    }
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...imgList.asMap().entries.map((e) => buildSliderIndicatorItem(e.key)).toList(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildSliderIndicatorItem(int index) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: currentSliderIndex == index? Colors.yellow : Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
