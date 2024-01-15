// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sar/PL/infoPL.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sar/esaf/esafCardsList.dart';
import 'package:sar/esaf/esafCardCongrats.dart';

bool isChecked = false;

class ESAFAdhaar extends StatefulWidget {
  const ESAFAdhaar({super.key});

  @override
  State<ESAFAdhaar> createState() => _ESAFAdhaarState();
}

class _ESAFAdhaarState extends State<ESAFAdhaar> {
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
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
                          fontSize: 20, // Adjust font size as needed
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
                          0, 10, 0, 10), // Adjust padding values as needed
                      child: const Text(
                        "Verify your identity using Aadhaar OTP authentication to authorise credit card application.",
                        style: TextStyle(
                          fontSize: 12, // Adjust font size as needed
                          color: Colors
                              .black, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                    const Text(
                      "Enter Aadhaar Number",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                      autofocus: false,
                      initialValue: "9999 8888 7777",
                      // decoration: const InputDecoration(
                      //   labelText: "Name",
                      //   border: OutlineInputBorder(),
                      //   filled: true, //<-- SEE HERE
                      //   fillColor: Color(0xFFF5F5F5),
                      // ),
                      readOnly: false,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Generate OTP",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 24, 2, 112),
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromARGB(255, 24, 2, 112)),
                        )
                      ],
                    ),
                    const Text(
                      "Enter OTP",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // const Center(
                            //   child: Text(
                            //     "Enter OTP",
                            //     style: TextStyle(
                            //         fontSize: 14, fontWeight: FontWeight.w400),
                            //   ),
                            // ),
                            // const SizedBox(height: 20),
                            OTPTextField(
                                spaceBetween: 2,
                                // obscureText: true,
                                controller: otpController,
                                length: 6,
                                width: MediaQuery.of(context).size.width,
                                textFieldAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                fieldWidth: 20,
                                fieldStyle: FieldStyle.underline,
                                outlineBorderRadius: 15,
                                style: const TextStyle(fontSize: 12),
                                keyboardType: TextInputType.number,
                                onChanged: (pin) {
                                  print("Changed: $pin");
                                },
                                onCompleted: (pin) {
                                  print("Completed: $pin");
                                }),
                            // const SizedBox(height: 20),
                            // TextButton(
                            //     onPressed: () {},
                            //     child: const Text(
                            //       "Resend OTP",
                            //       style: TextStyle(
                            //           color: Color.fromRGBO(233, 122, 42, 1)),
                            //     ))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "6 digit OTP is sent to your mobile number connected with your Aadhaar card.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                    ),
                  ])),
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
                                    const ESAFCardCongrats()));
                      },
                      child: const Text(
                        "Proceed",
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
