import 'package:flutter/material.dart';
import 'package:task1_twoscreen/input_string.dart';
import 'package:task1_twoscreen/view/components/background.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:task1_twoscreen/view/components/data/data.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * 0.04),
              Container(
                child: Text(
                  "Giới thiệu về 8X Land",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.yellow,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Container(
                padding: EdgeInsets.fromLTRB(size.height * 0.02,
                    size.height * 0.03, size.height * 0.02, size.height * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  //color: Colors.yellow,
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(imageList[index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(inputContenttt),
                  ],
                ),
              ),
            ],
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(
            margin: EdgeInsets.only(bottom: size.height * 0.15)),
        viewportFraction: 0.8,
        scale: 0.5,
      ),
    );
  }
}
