import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:taskez/Material/app_img.dart';

class CarouselImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.fromWindowPadding(padding, devicePixelRatio),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1.0,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          height: size.height * 0.7,
          viewportFraction: 1.0,
        ),
        items: [
          Stack(
            children: [
              Container(
                height: size.height * 0.6,
                child: Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImage.SliderBackground1),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.8,
                    child: Text(
                      "Task, Calendar, Chat",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: size.height * 0.6,
                child: Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImage.SliderBackground2),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.8,
                    child: Text(
                      "Work, Anywhere, Easily",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: size.height * 0.6,
                child: Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImage.SliderBackground3),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.8,
                    child: Text(
                      "Manage, Everything, on Phone",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
