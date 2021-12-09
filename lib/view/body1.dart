import 'package:flutter/material.dart';
import 'package:task1_twoscreen/input_string.dart';
import 'package:task1_twoscreen/view/components/background.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:task1_twoscreen/view/components/data/data.dart';
import 'package:task1_twoscreen/view/components/widget.dart';

class Body1 extends StatelessWidget {
  const Body1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var checkvalue;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.04),
                Text(
                  inputTitle[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      size.height * 0.02,
                      size.height * 0.03,
                      size.height * 0.02,
                      size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    //color: Colors.yellow,
                  ),
                  child: Column(
                    children: <Widget>[
                      if (inputTitle1[index] == '')
                        Container(
                          child: Text(inputTitle1[index]),
                          height: 0,
                          width: 0,
                        )
                      else
                        Column(
                          children: <Widget>[
                            Text(
                              inputTitle1[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                      Image(
                        image: AssetImage(imageList[index]),
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: size.height * 0.02),
                      if (inputContent[index] == '')
                        Container(
                          child: Column(
                            children: <Widget>[
                              MyDropDownBtn1(),
                              Divider(),
                              MyDropDownBtn2(),
                              SizedBox(height: size.height * 0.01),
                              Container(
                                //padding: EdgeInsets.all(4),
                                height: size.height * 0.06,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextButton(
                                  child: const Text(
                                    "Đăng ký tư vấn",
                                    style: TextStyle(
                                      color: Colors.white,
                                      //backgroundColor: Colors.orange,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: (() {}),
                                ),
                              ),
                            ],
                          ),
                        )
                      else
                        Column(
                          children: <Widget>[
                            Text(inputContent[index]),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: size.height * 0.15),
        ),
        viewportFraction: 0.8,
        scale: 0.5,
      ),
    );
  }
}
