import 'package:f1/widgets/poster_row.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // double amount = 45957529;
  // String formattedAmount = NumberFormat('#,##,###').format(45957529);
  int selectedItemIndex = 0;
  // List tabWidgets = [
  //   Text(
  //     "Home",
  //     style: TextStyle(fontSize: 20),
  //   ),
  //   Text(
  //     "Membership",
  //     style: TextStyle(fontSize: 20),
  //   ),
  //   Text(
  //     "Finance",
  //     style: TextStyle(fontSize: 20),
  //   ),
  //   Text(
  //     "Charity Box",
  //     style: TextStyle(fontSize: 20),
  //   ),
  //   Text(
  //     "Profile",
  //     style: TextStyle(fontSize: 20),
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 42, 7, 48),
            icon: Icon(
              FontAwesomeIcons.house,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership), label: "Membership"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Finance"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_sharp), label: "Charity Box"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Profile"),
        ],
        showUnselectedLabels: true,
        selectedItemColor: Colors.orange,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: selectedItemIndex,
        onTap: (int index) {
          setState(
            () {
              selectedItemIndex = index;
            },
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: const Color.fromARGB(255, 53, 24, 42),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(
                              text: "Hey rakshitha Ram!\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'TiltWarp',
                                  fontSize: 16)),
                          TextSpan(
                              text: 'Come be a part of ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'TiltWarp',
                                  fontSize: 16)),
                          TextSpan(
                              text: '3M Family',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'TiltWarp',
                                  color: Colors.blue,
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2)),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("asset/image/prof-1.webp"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 2,
            ),
            Container(
              width: double.infinity,
              height: 3,
              color: const Color.fromARGB(255, 42, 7, 48),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: 7,
                  height: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 7, 48),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("asset/image/p-1.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Recomended Fundarisers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TiltWarp',
                    color: Color.fromARGB(255, 42, 7, 48),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 10),
              child: SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PosterRow(pic: "asset/image/av-1.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-2.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-3.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-4.png"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 7,
                  height: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 7, 48),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 9),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        fontFamily: 'TiltWarp',
                        color: Color.fromARGB(255, 7, 108, 140),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 10),
              child: SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PosterRow(pic: "asset/image/av-7.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-8.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-5.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    PosterRow(pic: "asset/image/av-6.png"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
