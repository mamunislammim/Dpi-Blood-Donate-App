
import 'package:dpi_blood_donate/data_item/allImages.dart';
import 'package:dpi_blood_donate/data_item/color_codes.dart';
import 'package:flutter/material.dart';

class BloodGroupWidget extends StatelessWidget {
  const BloodGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      itemCount: bloodImage.length,
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          //childAspectRatio: .9,
        ),
        itemBuilder: (_,index){
          return Container(
            width: width/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  colors: [
                    mainColor,
                    bloodButtonColor
                  ],
                  end: Alignment.topRight,
                  begin: Alignment.bottomRight
              ),
              color: mainColor,
            ),
            child: Column(
              children: [
                Container(
                  height: height/5,
                  width: width/4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(bloodImage[index]),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Find ${bloodGroup[index]} Donor",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          );
        }
    );
  }
}
