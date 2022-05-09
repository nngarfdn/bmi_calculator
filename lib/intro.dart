import 'package:bmi_calculator/calculate.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];
  static const List<String> _assetNames = <String>[
    'assets/images/intro1.svg',
    'assets/images/intro2.svg',
    'assets/images/intro3.svg',
  ];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "BMI Calculator",
        description: "Ketahui apakah badan kamu ideal atau tidak",
        // pathImage: "assets/images/intro1.svg",
        centerWidget: SvgPicture.asset(_assetNames[0]),
        backgroundColor: const Color(0xff1c2e35),
        heightImage: 200,
        styleTitle: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 16,
        ),
        styleDescription: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 12,
        ),

      ),
    );
    slides.add(
      Slide(
        title: "Rekomendasi",
        description: "Ketahui rekomendasi untuk membantu membentuk badan kamu yang ideal",

        centerWidget: SvgPicture.asset(_assetNames[1]),
        backgroundColor: const Color(0xff1c2e35),
        heightImage: 200,
        styleTitle: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 16,
        ),
        styleDescription: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 12,
        ),

      ),
    );
    slides.add(
      Slide(
        title: "Bookmark",
        description:
        "Tambahkan ke bookmark untuk menyimpan hasil perhitungan kamu",
        centerWidget: SvgPicture.asset(_assetNames[2]),
        backgroundColor: const Color(0xff1c2e35),
        heightImage: 200,
        styleTitle: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 16,
        ),
        styleDescription: const TextStyle(
          color: Color(0xffffffff),
          fontSize: 12,
        ),

      ),
    );
  }

  void onDonePress() {
    // navigate to main
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Calculate(),
      ),
    );

  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
      overlayColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: onDonePress,
    );
  }
}

