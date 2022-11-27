import 'package:dpi_blood_donate/data_item/tips_description.dart';
import 'package:flutter/material.dart';

class TipsWidget extends StatelessWidget {
  const TipsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:   [
          Container(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 3),
            color: Colors.grey,
            child: Text(
              title,
              style: TextStyle(color: Colors.pink, fontSize: width/13, ),
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            writer,
            style: TextStyle(color: Colors.white.withOpacity(.9), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            date,
            style: TextStyle(color: Colors.white.withOpacity(.9), fontSize: width/20, ),
          ),

          Text(
            vumika,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 10,),
          Text(
            q1,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q3,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q4,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q5,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q6,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q7,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
          const SizedBox(height: 5,),
          Text(
            q8,
            style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: width/20, ),
          ),
        ],
      ),
    );
  }
}
