import 'package:f1/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({super.key});

  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 140,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 44, 8, 51),
            child: const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "Personalized your Preferred for set\ndefault Language",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, fontFamily: 'TiltWarp', color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                buildContainer(title: "EN", sub: "ENGLISH", clicked: true),
                buildContainer(title: "HN", sub: "HINDI", clicked: false),
                buildContainer(title: "TN", sub: "Tamil", clicked: false),
                buildContainer(title: "TL", sub: "TELUGU", clicked: false),
                buildContainer(title: "ML", sub: "MALAYALAM", clicked: false),
                buildContainer(title: "MR", sub: "MARATI", clicked: false),
                buildContainer(title: "PJ", sub: "PANJABI", clicked: false),
                buildContainer(title: "GJ", sub: "GUJARATI", clicked: false),
                buildContainer(title: "BH", sub: "BIHARI", clicked: false),
                buildContainer(title: "DL", sub: "DELHI", clicked: false),
                buildContainer(
                    title: "UP", sub: "UTTAR+PRADESH", clicked: false),
                buildContainer(title: "HN", sub: "HARIYANA", clicked: false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 44, 8, 51),
              ),
              child: const Center(
                child: Text(
                  "APPLY SETTING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TiltWarp',
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
            },
            child: const Text(
              "Skip >",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: 'TiltWarp'),
            ),
          )
        ],
      ),
    );
  }

  Widget buildContainer(
      {required String title, required String sub, required bool clicked}) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: clicked ? const Color.fromARGB(255, 44, 8, 51) : Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'TiltWarp'),
          ),
          Text(
            sub,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
