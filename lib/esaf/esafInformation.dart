import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:sar/PL/add_bank.dart';
import 'package:sar/esaf/esafInformation2.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class ESAFInformation extends StatefulWidget {
  const ESAFInformation({super.key});

  @override
  State<ESAFInformation> createState() => _ESAFInformationState();
}

class _ESAFInformationState extends State<ESAFInformation> {
  bool? check1 = false;
  bool? check2 = false;
  bool _value = false;
  bool _value1 = false;

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
              // BreadCrumb(
              //   items: <BreadCrumbItem>[
              //     BreadCrumbItem(
              //       content: const Text(
              //         "HOME",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "PERSONAL LOANS",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "APPLY",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //   ],
              //   divider: const Icon(Icons.chevron_right),
              // ),
              // const SizedBox(height: 30),
              // const Text(
              //   "Welcome , Amit!",
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Basic Information"), Text("1/8")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 8,
                currentStep: 1,
                selectedColor: Color.fromARGB(255, 201, 4, 4),
              ),
              // const SizedBox(height: 24),
              // const Text(
              //   "Personal Details",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              const SizedBox(height: 15),
              Container(
                color: Colors.transparent,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(15.0),
                // ),
                // elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "We have fetched below details from our records",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 12),
                        autofocus: false,
                        initialValue: "Amit Kumar",
                        readOnly: true,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "DOB",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 12),

                        autofocus: false,
                        initialValue: "01/01/1992",
                        // decoration: const InputDecoration(
                        //   labelText: "DOB",
                        //   border: OutlineInputBorder(),
                        //   filled: true, //<-- SEE HERE
                        //   fillColor: Color(0xFFF5F5F5),
                        // ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 12),

                        autofocus: false,
                        initialValue: "Male",
                        // decoration: const InputDecoration(
                        //   labelText: "Gender",
                        //   border: OutlineInputBorder(),
                        //   filled: true, //<-- SEE HERE
                        //   fillColor: Color(0xFFF5F5F5),
                        // ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Father's Name",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        style: const TextStyle(fontSize: 12),

                        autofocus: false,
                        initialValue: "Ramesh Kumar",
                        // decoration: const InputDecoration(
                        //   labelText: "Father's Name",
                        //   border: OutlineInputBorder(),
                        //   filled: true, //<-- SEE HERE
                        //   fillColor: Color(0xFFF5F5F5),
                        // ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              // const Text(
              //   "Address",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              // const SizedBox(height: 20),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   elevation: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.all(20),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         const Text(
              //           "Please confirm your address",
              //           style: TextStyle(
              //               fontSize: 10, fontWeight: FontWeight.w400),
              //         ),
              //         const SizedBox(height: 20),
              //                               TextFormField( style: const TextStyle(fontSize: 12),

              //           autofocus: false,
              //           initialValue:
              //               " House No.- 123 Sector- 10 Vasant Vihar, Delhi, 110011",
              //           decoration: const InputDecoration(
              //             labelText: "Communication Address",
              //             border: OutlineInputBorder(),
              //             filled: true, //<-- SEE HERE
              //             fillColor: Color(0xFFF5F5F5),
              //           ),
              //           readOnly: true,
              //           maxLines: 3,
              //         ),
              //         const SizedBox(height: 20),
              //                               TextFormField( style: const TextStyle(fontSize: 12),

              //           autofocus: false,
              //           initialValue: "helloamitXX@gmail.com",
              //           decoration: const InputDecoration(
              //             labelText: "Email Address",
              //             border: OutlineInputBorder(),
              //             filled: true, //<-- SEE HERE
              //             fillColor: Color(0xFFF5F5F5),
              //           ),
              //           readOnly: true,
              //         ),
              //         const SizedBox(height: 20),
              //         const Divider(),
              //         const SizedBox(height: 20),
              //         Row(
              //           children: [
              //             Checkbox(
              //               value: _value,
              //               onChanged: (value) {
              //                 setState(() {
              //                   _value = value!;
              //                 });
              //               },
              //             ),
              //             const SizedBox(width: 10),
              //             const Text(
              //               "I agree my details are correct",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.w400,
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(height: 20),
              //         Row(
              //           children: [
              //             Checkbox(
              //               value: _value1,
              //               onChanged: (bool? _value) {
              //                 setState(() {
              //                   _value1 = _value!;
              //                 });
              //               },
              //             ),
              //             const SizedBox(width: 10),
              //             const Flexible(
              //               child: Text(
              //                 "I agree to the Terms and Conditions and Privacy, and give my consent to Saraswat Bank as the lender to collect, store and verify my credit report from credit bureaus and KYC details (from CERSA) for processing loan application.",
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   fontWeight: FontWeight.w400,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 20),

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
                                    const ESAFInformationTwo()));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: _value == true && _value1 == true
              //         // check1 == false || check2 == false
              //         //     ? null
              //         //     :
              //         ? () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => Employment(),
              //               ),
              //             );
              //           }
              //         : null,
              //     child: const Text("Next"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
