import 'package:flutter/material.dart';
import '../data_item/color_codes.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../data_item/allImages.dart';
import '../widget/blood_group.dart';
import '../widget/tips_widget.dart';
import '../widget/user_section_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectItem = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              tileMode: TileMode.mirror,
              colors: [
                mainColor.withOpacity(.5),
                Colors.blueAccent.withOpacity(.5),
                Colors.greenAccent.withOpacity(.5)
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomRight,
            )),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                      height: height / 4,
                      width: width,
                      color: mainColor,
                      child: ImageSlideshow(
                        onPageChanged: (value) {},
                        autoPlayInterval: 3500,
                        isLoop: true,
                        children: [
                          for (int i = 0; i < slideImage.length; i++)
                            Image.network(
                              slideImage[i],
                              fit: BoxFit.fill,
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient:  const LinearGradient(
                                colors: [Colors.red, Colors.black45],
                                end: Alignment.bottomLeft,
                                begin: Alignment.topLeft)),
                        child: const Text(
                          "রক্ত দিন , জীবন বাঁচান ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ))
                  ],
                ),
                const Divider(
                  thickness: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectItem = 1;
                        });
                      },
                      child: Card(
                        shadowColor: mainColor,
                        surfaceTintColor: mainColor,
                        elevation: 5,
                        color: const Color(0xffcd2525),
                        shape: RoundedRectangleBorder(
                          side: _selectItem == 1
                              ? const BorderSide(width: 3, color: Colors.yellow)
                              : const BorderSide(
                                  width: 3,
                                  color: Colors.red,
                                ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 5),
                            child: _selectItem == 1
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: Image.asset("images/user.png"),
                                      ),
                                      const Text(
                                        "User",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    height: 50,
                                    width: 50,
                                    // child: Image.asset("images/user.png"),
                                    child: Image.network(
                                      "https://thumbs.gfycat.com/AcclaimedZestyDuck-size_restricted.gif",
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectItem = 2;
                        });
                      },
                      child: Card(
                        shadowColor: mainColor,
                        surfaceTintColor: mainColor,
                        elevation: 5,
                        color: const Color(0xffcd2525),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: _selectItem == 2
                              ? const BorderSide(width: 3, color: Colors.yellow)
                              : const BorderSide(
                                  width: 3,
                                  color: Colors.red,
                                ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 10, bottom: 5),
                            child: _selectItem == 2
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 55,
                                        child: Image.asset("images/blood.png"),
                                      ),
                                      const Text(
                                        "Blood",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    height: 50,
                                    child: Image.asset(
                                      "images/blood.png",
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectItem = 3;
                        });
                      },
                      child: Card(
                        shadowColor: mainColor,
                        surfaceTintColor: mainColor,
                        elevation: 5,
                        color: const Color(0xffcd2525),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: _selectItem == 3
                              ? const BorderSide(width: 3, color: Colors.yellow)
                              : const BorderSide(
                                  width: 3,
                                  color: Colors.red,
                                ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 5),
                            child: _selectItem == 3
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: Image.asset(
                                          "images/tipsA.png",
                                        ),
                                      ),
                                      const Text(
                                        "Tips",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    height: 50,
                                    width: 55,
                                    // child: Image.asset("images/ti.png"),
                                    child:  Image.asset("images/tipsButton.gif"),
                                  )),
                      ),
                    ),
                  ],
                ),
                _selectItem == 2 ? const BloodGroupWidget() : const Text(""),
                _selectItem == 1 ? const UserSectionWidget() : const Text(""),
                _selectItem == 3 ? const TipsWidget() : const Text(""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
