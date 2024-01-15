// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sar/esaf/esafCongrats.dart';
import 'package:sar/esaf/esafFDSelection.dart';
import 'package:carousel_slider/carousel_slider.dart';

bool isChecked = false;

class ESAFReview extends StatefulWidget {
  const ESAFReview({super.key});

  @override
  State<ESAFReview> createState() => _ESAFReviewState();
}

class _ESAFReviewState extends State<ESAFReview> {
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
              Container(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black, width: 1),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
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
                        "Please review your card details.",
                        style: TextStyle(
                          fontSize: 12, // Adjust font size as needed
                          color: Colors
                              .black, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                  ])),

              Container(
                margin: const EdgeInsets.only(
                    top: 8), // Adjust top margin as needed
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(-5, 0), // Controls the left shadow
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, -5), // Controls the top shadow
                    ),
                  ],
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
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
                            Image.asset('assets/esafCard1.png',
                                height: 180,
                                width: double
                                    .infinity), // Replace with your image path

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('ESAF Rewards Credit Card',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Text('Shopping',
                                    style: TextStyle(
                                        fontSize: 10,
                                        backgroundColor: Colors.green)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Joining Fee'),
                                Text('₹500/-',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('|'),
                            Column(
                              children: [
                                Text('Annual Fee'),
                                Text('₹500/-',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('|'),
                            Column(
                              children: [
                                Text('Credit Card Limit'),
                                Text('₹21,000/-',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 1, 3, 115),
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromARGB(255, 24, 2, 112)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 3, 136),
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
                        "CC Limit based on selection.",
                        style: TextStyle(
                          fontSize: 15, // Adjust font size as needed
                          color: Colors
                              .white, // Ensure text visibility on red background
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
                        "₹2,25,000/-",
                        style: TextStyle(
                            fontSize: 20, // Adjust font size as needed
                            color: Colors.white,
                            fontWeight: FontWeight
                                .bold // Ensure text visibility on red background
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
                        "Interest on credit card @2.5% per month.",
                        style: TextStyle(
                          fontSize: 15, // Adjust font size as needed
                          color: Colors
                              .white, // Ensure text visibility on red background
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
                        "Annual interest rate @30%",
                        style: TextStyle(
                          fontSize: 15, // Adjust font size as needed
                          color: Colors
                              .white, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                  ])),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    0, 10, 0, 0), // Adjust padding values as needed
                child: const Text(
                  "FD list",
                  style: TextStyle(
                    fontSize: 12, // Adjust font size as needed
                    color: Color.fromARGB(255, 27, 2,
                        109), // Ensure text visibility on red background
                  ),
                ),
              ),
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text('Select', textAlign: TextAlign.center),
                      ),
                      TableCell(
                        child: Text('FD Number', textAlign: TextAlign.center),
                      ),
                      TableCell(
                        child: Text('Amount Rs.', textAlign: TextAlign.center),
                      ),
                      TableCell(
                        child: Text('Int. on FD', textAlign: TextAlign.center),
                      ),
                    ],
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Subtle header background color
                    ),
                  ),
                  TableRow(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text('xxx4076'),
                      Text('8970'),
                      Text('6.7%'),
                    ],
                  ),
                  TableRow(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text('xxx2464'),
                      Text('2,52,354/-'),
                      Text('7.1%'),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                // padding: const EdgeInsets.fromLTRB(
                //     0, 0, 0, 10), // Adjust padding values as needed
                child: const Text(
                  "Maturity: Mar 5, 2024",
                  style: TextStyle(
                    fontSize: 10, // Adjust font size as needed
                    color:
                        Colors.red, // Ensure text visibility on red background
                  ),
                ),
              ),
              // const SizedBox(height: 10),
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
                                builder: (context) => const ESAFCongrats()));
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
