import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sar/esaf/esafReview.dart';

bool isChecked = false;

class ESAFOtp extends StatefulWidget {
  const ESAFOtp({super.key});

  @override
  State<ESAFOtp> createState() => _ESAFOtpState();
}

class _ESAFOtpState extends State<ESAFOtp> {
  OtpFieldController otpController = OtpFieldController();
  final _phoneNumberController =
      TextEditingController(); // Define the controller
  static bool _value = true;
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
                    20, 0, 10, 20), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "Assisted Application for Customers",
                    style: TextStyle(
                      fontSize: 20, // Adjust font size as needed
                      fontStyle: FontStyle.italic,
                      color: Colors
                          .black, // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
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
                          // obscureText: true,
                          controller: otpController,
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceEvenly,
                          fieldWidth: 25,
                          fieldStyle: FieldStyle.underline,
                          outlineBorderRadius: 15,
                          style: const TextStyle(fontSize: 15),
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
              const SizedBox(height: 14),
              Container(
                width: double.infinity, // Expand to fill the entire column
                color: Colors.transparent,
                padding: const EdgeInsets.fromLTRB(
                    0, 10, 0, 10), // Adjust padding values as needed
                child: const Center(
                  child: Text(
                    "By proceeding, you are giving us consent to call or SMS with reference to your application",
                    style: TextStyle(
                      fontSize: 16, // Adjust font size as needed
                      color: Color.fromARGB(255, 1, 1,
                          112), // Ensure text visibility on red background
                    ),
                  ),
                ),
              ),

              Row(
                  // padding: const EdgeInsets.fromLTRB(
                  //     20, 10, 10, 50), // Adjust padding values as needed

                  children: [
                    Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const Flexible(
                      child: Text(
                        "I authorize the executive of ESAF to proceed Credit Card Application on my behalf",
                        style: TextStyle(
                          fontSize: 13, // Adjust font size as needed
                          fontStyle: FontStyle.italic,
                          color: Colors
                              .black, // Ensure text visibility on red background
                        ),
                      ),
                    ),
                  ]),

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
              const SizedBox(height: 60),
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
                                builder: (context) => const ESAFReview()));
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
