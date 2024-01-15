import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sar/PL/infoPL.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sar/esaf/esafApproved.dart';

bool isChecked = false;

class ESAFMobile extends StatefulWidget {
  const ESAFMobile({super.key});

  @override
  State<ESAFMobile> createState() => _ESAFMobileState();
}

class _ESAFMobileState extends State<ESAFMobile> {
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
                color: const Color.fromARGB(255, 24, 2, 112),
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
                    20, 10, 10, 20), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "Assisted Application Portal for Customers",
                    style: TextStyle(
                      fontSize: 24, // Adjust font size as needed
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors
                          .black, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0),
              // const StepProgressIndicator(
              //   totalSteps: 11,
              //   currentStep: 1,
              //   selectedColor: Color(0xFF45C00B),
              // ),
              const Text(
                "Customer Mobile Number",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.red),
              ),
              const SizedBox(height: 20), // Add spacing between elements
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  prefixText: '+91 ',
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number, // Ensure numeric input
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
              const SizedBox(height: 30),
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
                                builder: (context) => const ESAFApproval()));
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
