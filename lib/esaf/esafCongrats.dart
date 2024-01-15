import 'package:flutter/material.dart';
import 'package:sar/esaf/esafAdhaar.dart';

bool isChecked = false;

class ESAFCongrats extends StatefulWidget {
  const ESAFCongrats({super.key});

  @override
  State<ESAFCongrats> createState() => _ESAFCongratsState();
}

class _ESAFCongratsState extends State<ESAFCongrats> {
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
                      Column(
                        children: [
                          Container(
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            padding: const EdgeInsets.fromLTRB(
                                0, 0, 0, 0), // Adjust padding values as needed
                            child: const Text(
                              "Congratulations!",
                              style: TextStyle(
                                fontSize: 25, // Adjust font size as needed
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
                              "Please Review customer T&Cs and details.",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double
                                .infinity, // Expand to fill the entire column
                            color: Colors.transparent,
                            padding: const EdgeInsets.fromLTRB(
                                0, 0, 0, 0), // Adjust padding values as needed
                            child: const Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 235, 63, 75),
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
                                    "Terms & Conditions",
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
                                    "The terms and conditions apply to and regulate the issuance of credit card provided by ESAF SFB",
                                    style: TextStyle(
                                      fontSize:
                                          12, // Adjust font size as needed
                                      color: Colors
                                          .white, // Ensure text visibility on red background
                                    ),
                                  ),
                                ),
                              ])),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/tc.png',
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                              ),
                              const SizedBox(width: 10),
                              const Flexible(
                                child: Text(
                                  "I hereby confirm that I have read and accepted the T&Cs and KFS.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
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
                                                const ESAFAdhaar()));
                                  },
                                  child: const Text(
                                    "I Accept",
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
                      )
                    ]))));
  }
}
