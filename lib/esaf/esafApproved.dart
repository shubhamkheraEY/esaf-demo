import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sar/PL/infoPL.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sar/esaf/esafCardsList.dart';

bool isChecked = false;

class ESAFApproval extends StatefulWidget {
  const ESAFApproval({super.key});

  @override
  State<ESAFApproval> createState() => _ESAFApprovalState();
}

class _ESAFApprovalState extends State<ESAFApproval> {
  OtpFieldController otpController = OtpFieldController();
  final _phoneNumberController =
      TextEditingController(); // Define the controller

  @override
  void dispose() {
    _phoneNumberController
        .dispose(); // Dispose of the controller to avoid memory leaks
    super.dispose();
  }

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
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    0, 0, 0, 0), // Adjust padding values as needed
                child: const Text(
                  "Hi, Amit!",
                  style: TextStyle(
                    fontSize: 25, // Adjust font size as needed
                    color: Colors
                        .black, // Ensure text visibility on red background
                  ),
                ),
              ),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    0, 0, 0, 10), // Adjust padding values as needed
                child: const Text(
                  "Elevate your Financial Experience with out instant credit card.",
                  style: TextStyle(
                    fontSize: 13, // Adjust font size as needed
                    color: Colors
                        .black, // Ensure text visibility on red background
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 1, 3, 115)),
                  child: Column(children: [
                    Container(
                      width:
                          double.infinity, // Expand to fill the entire column
                      color: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(
                          0, 10, 0, 30), // Adjust padding values as needed
                      child: const Text(
                        "Get instant credit card with limit up to ₹2,50,000/- based on your FD",
                        style: TextStyle(
                          fontSize: 25, // Adjust font size as needed
                          color: Colors
                              .white, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                    // RichText(
                    //   text: const TextSpan(
                    //     text: 'Get instant credit card with limit up to ',
                    //     style: TextStyle(color: Colors.black, fontSize: 15),
                    //     children: [
                    //       TextSpan(
                    //         text: 'INR 2,50,000/-',
                    //         style: TextStyle(color: Colors.red, fontSize: 15),
                    //       ),
                    //       TextSpan(
                    //         text: ' based on your FD',
                    //         style: TextStyle(color: Colors.black, fontSize: 15),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ])),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the contents in the row
                children: [
                  Text(
                    '100% Paperless | ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Super Quick | ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Instant Issuance',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              //   child: Align(
              //     alignment: Alignment.bottomCenter,
              //     child: SizedBox(
              //       width: double.infinity,
              //       child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor:
              //               Colors.blue, // Set button background color
              //         ),
              //         onPressed: () => Navigator.pushNamed(
              //             context, '/home'), // Navigate to HomePage
              //         child: Text('Apply Now'),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 50),
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
                                builder: (context) => const ESAFCardsList()));
                      },
                      child: const Text(
                        "Get Started",
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
