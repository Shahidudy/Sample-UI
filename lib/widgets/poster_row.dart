import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class PosterRow extends StatelessWidget {
  PosterRow({required this.pic, super.key});
  final String pic;

  String formattedAmount = NumberFormat('#,##,###').format(45957529);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 230,
      child: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    pic,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 7, 108, 140),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: const [
                  Text(
                    "35",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Days",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: Container(
              height: 20,
              width: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 254, 254, 254),
                // borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "We are Looking Fund for Ongoing Movie",
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiltWarp',
                    color: Color.fromARGB(255, 42, 7, 48),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 40,
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 108, 140),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Donate",
                  style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'TiltWarp',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 246, 246, 246)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 43,
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 38, 105, 220),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    const Text(
                      "Rs : ",
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      formattedAmount,
                      style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const Text(
                      " raised",
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
