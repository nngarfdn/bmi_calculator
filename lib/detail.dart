import 'dart:math';

import 'package:bmi_calculator/bmidata.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Detail extends StatelessWidget {
  BmiData data;

  Detail({Key? key, required this.data}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    //calculate the BMI
    double bmiValue = data.weight / pow(data.height / 100, 2);


    String bmiText = bmiValue.toStringAsFixed(1);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: Center(
        child: SleekCircularSlider(
        min: 0,
        max: 50,
        initialValue: bmiValue,
        appearance: CircularSliderAppearance(
          size: 200,

          customColors: CustomSliderColors(
            progressBarColor: Colors.blue,
            trackColor: Colors.grey,
            dotColor: Colors.red,
          )),

            innerWidget: (double value) {
              //This the widget that will show current value
              return Center(child: Text("$bmiText",
                style: TextStyle(
                    fontSize: 50.0, fontWeight: FontWeight.bold),));
            },
          ),

        )
    );
  }
}
