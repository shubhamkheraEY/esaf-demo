import 'package:flutter/material.dart';
import 'package:sar/esaf/esafCongrats.dart';
import 'package:sar/esaf/esafInformation.dart';

bool isChecked = false;

class ESAFFDSelection extends StatefulWidget {
  const ESAFFDSelection({super.key});

  @override
  State<ESAFFDSelection> createState() => _ESAFFDSelectionState();
}

class _ESAFFDSelectionState extends State<ESAFFDSelection> {
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
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            padding: const EdgeInsets.fromLTRB(
                                0, 0, 0, 0), // Adjust padding values as needed
                            child: const Text(
                              "Minimum total value of Fixed Deposits",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          Container(
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            padding: const EdgeInsets.fromLTRB(
                                0, 0, 0, 10), // Adjust padding values as needed
                            child: const Text(
                              "Selected must be 2,25,000/- or more.",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                "Select CC Limit",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 24, 2, 112),
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromARGB(255, 24, 2, 112)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 31, 3, 136),
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(children: [
                                Container(
                                  width: double
                                      .infinity, // Expand to fill the entire column
                                  color: Colors.transparent,
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0,
                                      10), // Adjust padding values as needed
                                  child: const Text(
                                    "CC Limit based on selection.",
                                    style: TextStyle(
                                      fontSize:
                                          13, // Adjust font size as needed
                                      color: Colors
                                          .white, // Ensure text visibility on red background
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Expand to fill the entire column
                                  color: Colors.transparent,
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0,
                                      10), // Adjust padding values as needed
                                  child: const Text(
                                    "2,25,000/-",
                                    style: TextStyle(
                                      fontSize:
                                          15, // Adjust font size as needed
                                      color: Colors
                                          .white, // Ensure text visibility on red background
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Expand to fill the entire column
                                  color: Colors.transparent,
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0,
                                      10), // Adjust padding values as needed
                                  child: const Text(
                                    "Interest on credit card @2.5% per month.",
                                    style: TextStyle(
                                      fontSize:
                                          13, // Adjust font size as needed
                                      color: Colors
                                          .white, // Ensure text visibility on red background
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Expand to fill the entire column
                                  color: Colors.transparent,
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0,
                                      10), // Adjust padding values as needed
                                  child: const Text(
                                    "Annual interest rate @30%",
                                    style: TextStyle(
                                      fontSize:
                                          13, // Adjust font size as needed
                                      color: Colors
                                          .white, // Ensure text visibility on red background
                                    ),
                                  ),
                                ),
                              ])),
                          Container(
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            // padding: const EdgeInsets.fromLTRB(
                            //     0, 0, 0, 10), // Adjust padding values as needed
                            child: const Text(
                              "FD list",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Color.fromARGB(255, 27, 2,
                                    109), // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          Table(
                            border: TableBorder.all(),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Text('Select',
                                        textAlign: TextAlign.center),
                                  ),
                                  TableCell(
                                    child: Text('FD Number',
                                        textAlign: TextAlign.center),
                                  ),
                                  TableCell(
                                    child: Text('Amount Rs.',
                                        textAlign: TextAlign.center),
                                  ),
                                  TableCell(
                                    child: Text('Int. on FD',
                                        textAlign: TextAlign.center),
                                  ),
                                ],
                                decoration: BoxDecoration(
                                  color: Colors.grey[
                                      300], // Subtle header background color
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
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            // padding: const EdgeInsets.fromLTRB(
                            //     0, 0, 0, 10), // Adjust padding values as needed
                            child: const Text(
                              "Maturity: Mar 5, 2024",
                              style: TextStyle(
                                fontSize: 10, // Adjust font size as needed
                                color: Colors
                                    .red, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                                            builder: (context) =>
                                                const ESAFInformation()));
                                  },
                                  child: const Text(
                                    "Proceed",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]))));
  }
}
