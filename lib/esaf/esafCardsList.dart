// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sar/esaf/esafFDSelection.dart';
import 'package:carousel_slider/carousel_slider.dart';

bool isChecked = false;

class ESAFCardsList extends StatefulWidget {
  const ESAFCardsList({super.key});

  @override
  State<ESAFCardsList> createState() => _ESAFCardsListState();
}

class _ESAFCardsListState extends State<ESAFCardsList> {
  static bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credit Card Application"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 2, 64, 116)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // actions: const <Widget>[
        //   Icon(Icons.question_mark_rounded),
        //   SizedBox(width: 15)
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   alignment: Alignment.center,
              //   child: Image.asset(
              //     'assets/esaf_logo.png',
              //     height: 100,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // const SizedBox(height: 30),
              // Container(
              //   width: double.infinity, // Expand to fill the entire column
              //   color: const Color.fromARGB(255, 228, 18, 3),
              //   padding: const EdgeInsets.fromLTRB(
              //       10, 10, 10, 10), // Adjust padding values as needed
              //   child: const Center(
              //     child: Text(
              //       "Credit Card Application Process",
              //       style: TextStyle(
              //         fontSize: 20, // Adjust font size as needed
              //         fontWeight: FontWeight.bold,
              //         color: Colors
              //             .white, // Ensure text visibility on red background
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    Container(
                      width:
                          double.infinity, // Expand to fill the entire column
                      color: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(
                          0, 0, 0, 10), // Adjust padding values as needed
                      child: const Text(
                        "Hi Amit!",
                        style: TextStyle(
                          fontSize: 15, // Adjust font size as needed
                          color: Colors
                              .black, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                    Container(
                      width:
                          double.infinity, // Expand to fill the entire column
                      color: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(
                          0, 0, 0, 10), // Adjust padding values as needed
                      child: const Text(
                        "We have 3 exclusive cards pre-approved for you.",
                        style: TextStyle(
                          fontSize: 13, // Adjust font size as needed
                          color: Colors
                              .black, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                  ])),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    // Set the desired options for the carousel
                    height: 270, // Set the height of the carousel
                    autoPlay: true, // Enable auto-play
                    autoPlayCurve: Curves.easeInOut, // Set the auto-play curve
                    autoPlayAnimationDuration: const Duration(
                        milliseconds:
                            300), // Set the auto-play animation duration
                    // aspectRatio: 16 / 9, // Set the aspect ratio of each item
                    // You can also customize other options such as enlargeCenterPage, enableInfiniteScroll, etc.
                  ),
                  items: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        margin: const EdgeInsets.only(
                            top: 8), // Adjust top margin as needed
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.black, width: 1),
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: (const Text(
                                      'Recommended',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ))),
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/esafCard1.png',
                                        height: 160,
                                        width: double.infinity,
                                        // fit: BoxFit.cover,
                                      ),
                                    ), // Replace with your image path
                                    const SizedBox(width: 16),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('ESAF Rewards Credit Card',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold)),
                                        Text('Shopping',
                                            style: TextStyle(
                                                fontSize: 10,
                                                backgroundColor: Colors.green)),
                                      ],
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Joining Fee',
                                            style: TextStyle(fontSize: 10)),
                                        Text('₹500/-',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Text('|'),
                                    Column(
                                      children: [
                                        Text('Annual Fee',
                                            style: TextStyle(fontSize: 10)),
                                        Text('₹500/-',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Text('|'),
                                    Column(
                                      children: [
                                        Text(
                                          'Credit Card Limit',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text('₹21,000/-',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Know More",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              Color.fromARGB(255, 24, 2, 112),
                                          color:
                                              Color.fromARGB(255, 1, 3, 115)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: const EdgeInsets.only(
                          top: 8), // Adjust top margin as needed
                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.black, width: 1),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/esafCard1.png',
                                      height: 180,
                                      width: double.infinity,
                                      // fit: BoxFit.cover,
                                    ),
                                  ), // Replace with your image path
                                  const SizedBox(width: 16),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('ESAF Rewards Credit Card',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      Text('Shopping',
                                          style: TextStyle(
                                              fontSize: 10,
                                              backgroundColor: Colors.green)),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('Joining Fee',
                                          style: TextStyle(fontSize: 10)),
                                      Text('₹500/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Text('|'),
                                  Column(
                                    children: [
                                      Text('Annual Fee',
                                          style: TextStyle(fontSize: 10)),
                                      Text('₹500/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Text('|'),
                                  Column(
                                    children: [
                                      Text(
                                        'Credit Card Limit',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text('₹21,000/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Know More",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromARGB(255, 24, 2, 112),
                                        color: Color.fromARGB(255, 1, 3, 115)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: const EdgeInsets.only(
                          top: 8), // Adjust top margin as needed
                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.black, width: 1),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/esafCard1.png',
                                      height: 180,
                                      width: double.infinity,
                                      // fit: BoxFit.cover,
                                    ),
                                  ), // Replace with your image path
                                  const SizedBox(width: 16),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('ESAF Rewards Credit Card',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      Text('Shopping',
                                          style: TextStyle(
                                              fontSize: 10,
                                              backgroundColor: Colors.green)),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('Joining Fee',
                                          style: TextStyle(fontSize: 10)),
                                      Text('₹500/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Text('|'),
                                  Column(
                                    children: [
                                      Text('Annual Fee',
                                          style: TextStyle(fontSize: 10)),
                                      Text('₹500/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Text('|'),
                                  Column(
                                    children: [
                                      Text(
                                        'Credit Card Limit',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text('₹21,000/-',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Know More",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromARGB(255, 24, 2, 112),
                                        color: Color.fromARGB(255, 1, 3, 115)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
              const SizedBox(height: 20),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ESAFFDSelection()));
                      },
                      child: const Text(
                        "Get Now",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
