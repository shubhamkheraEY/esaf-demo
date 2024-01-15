import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sar/PL/infoPL.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sar/esaf/esafOTP.dart';

bool isChecked = false;

class ESAFWait extends StatefulWidget {
  const ESAFWait({super.key});

  @override
  State<ESAFWait> createState() => _ESAFWaitState();
}

class _ESAFWaitState extends State<ESAFWait> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/esaf_logo.png',
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: const Color.fromARGB(255, 228, 18, 3),
                padding: const EdgeInsets.fromLTRB(
                    10, 10, 10, 10), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "Credit Card Application Process",
                    style: TextStyle(
                      fontSize: 24, // Adjust font size as needed
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .white, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    20, 10, 10, 50), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "Assisted Application for Customers",
                    style: TextStyle(
                      fontSize: 20, // Adjust font size as needed
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors
                          .black, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // const StepProgressIndicator(
              //   totalSteps: 11,
              //   currentStep: 1,
              //   selectedColor: Color(0xFF45C00B),
              // ),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    20, 0, 10, 0), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "Please wait for customer to allow",
                    style: TextStyle(
                      fontSize: 20, // Adjust font size as needed
                      fontStyle: FontStyle.italic,
                      color: Colors
                          .black, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    20, 0, 10, 0), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "you to proceed",
                    style: TextStyle(
                      fontSize: 20, // Adjust font size as needed
                      fontStyle: FontStyle.italic,
                      color: Colors
                          .black, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              // Expanded(
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
                                builder: (context) => const ESAFOtp()));
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
