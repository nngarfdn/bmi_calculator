import 'package:bmi_calculator/bmidata.dart';
import 'package:bmi_calculator/list_bookmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'detail.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final genderController = TextEditingController();
  String name = "Empty Name";

  void changeName() {
    setState(() {
      name = nameController.text;
    });
  }

  void navigateToDetail() {
    BmiData data = BmiData(
        name: nameController.text,
        age: int.parse(ageController.text),
        height: int.parse(heightController.text),
        weight: int.parse(weightController.text));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Detail(data: data)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hitung BMI',
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 40, left: 16),
                    child: Text('Selamat datang di aplikasi BMI Calculator')),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: SvgPicture.asset(
                  'assets/images/intro1.svg',
                  height: 200,
                  fit: BoxFit.contain,
                )),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukkan nama kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: 'Umur',
                      hintText: 'Masukkan umur kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    controller: heightController,
                    decoration: InputDecoration(
                      labelText: 'Tinggi',
                      hintText: 'Masukkan tinggi kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    controller: weightController,
                    decoration: InputDecoration(
                      labelText: 'Berat',
                      hintText: 'Masukkan berat kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(16)
                ,child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45), // NEW
                      ),
                      onPressed: navigateToDetail,
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),)
              ],
            ),
          ],
        ),
      )),
    );
  }
}
