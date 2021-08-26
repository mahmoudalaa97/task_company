import 'package:app/utils/colors.dart';
import 'package:app/utils/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollCardWidget extends StatefulWidget {
  @override
  _ScrollCardWidgetState createState() => _ScrollCardWidgetState();
}

class _ScrollCardWidgetState extends State<ScrollCardWidget> {
  int currentIndex = 0;
  var listColor = [Color(0xff4cb0c4), Color(0xffb7565c), Color(0xff163b7c)];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.80,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.75,
        initialPage: 2,
      ),
      items: listColor.map((e) {
        return Container(
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: e,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/ic_credit_card_chip.svg",
                      height: 50,
                      width: 50,
                      color: MyColors.brownColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Account Balance ",
                                style: MyStyle.textStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "15.0 EGP ",
                              style: MyStyle.textStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "بطاقة المنح الجامعية",
                    style:
                        MyStyle.textStyle(fontSize: 14, color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black38
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(child: Text("Cash",style: MyStyle.textStyle(fontSize: 13, color: Colors.white),)),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
