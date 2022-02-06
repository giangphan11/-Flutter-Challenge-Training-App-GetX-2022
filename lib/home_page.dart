import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List info = [];

  /// Load data from assets
  _initData() async {
    await DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: color.AppColor.homePageIcons),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageIcons),
                const SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: color.AppColor.homePageIcons)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20, color: color.AppColor.homePageDetail),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9)
                  ]),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(5, 10),
                        blurRadius: 20,
                        color: color.AppColor.gradientSecond.withOpacity(0.2)),
                  ]),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glues Workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: color
                                      .AppColor.homePageContainerTextSmall),
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: const Offset(4, 8))
                              ]),
                          child: const Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
           const SizedBox(height: 5,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image:const DecorationImage(
                            image: AssetImage("assets/image1z.png"),

                        ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: const Offset(8, 10),
                          color: color.AppColor.gradientSecond.withOpacity(0.3)
                        ),
                        BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(-1, -5),
                            color: color.AppColor.gradientSecond.withOpacity(0.3)
                        )
                      ]
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                   margin: const EdgeInsets.only(right: 200, bottom: 50),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                    // color: Colors.redAccent.withOpacity(0.3),
                     image: const DecorationImage(
                       image: AssetImage("assets/image2.png"),
                       fit: BoxFit.fill
                     )
                   ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                   // color: Colors.amber.withOpacity(0.3),
                    margin: const EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail
                          ),
                        ),
                        const SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text: "Keep it up\n",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.secondPageContainerGradient1stColor
                          ),
                          children: const [
                            TextSpan(
                              text: "stick your plan"
                            )
                          ]
                        )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text("Area of focus",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: color.AppColor.homePageTitle
                ),
                ),
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: info.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, i){
                  return Row(
                    children: [
                          Container(
                            width: 200,
                            height: 170,
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    info[i]["img"]
                                  ),
                                  //fit: BoxFit.fill
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(3, 5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: const Offset(-5, -5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ]),
                            child: Center(
                                child: Align(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  child: Text(
                              info[i]["title"],
                              style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                            ),
                                )),
                          )
                        ],
                      );
                    }
            )
            )
          ],
        ),
      ),
    );
  }
}
