import 'package:flutter/material.dart';
import 'package:sar/esaf/esafAdhaar.dart';

bool isChecked = false;

class ESAFCardDetails extends StatefulWidget {
  const ESAFCardDetails({super.key});

  @override
  State<ESAFCardDetails> createState() => _ESAFCardDetailsState();
}

class _ESAFCardDetailsState extends State<ESAFCardDetails> {
  static bool _value = true;
  static bool _value2 = false;

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
                              "ESAF Platinum Credit Card",
                              style: TextStyle(
                                fontSize: 25, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/cardDetails.png',
                              height: 180,
                              width: double.infinity,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                  ),
                                  // const SizedBox(width: 10),
                                  const Text(
                                    "View Card Details",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: _value2,
                                    onChanged: (value) {
                                      setState(() {
                                        _value2 = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "View CVV",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Transaction History",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Table(
                            border: TableBorder.all(),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Text('Date',
                                        textAlign: TextAlign.center),
                                  ),
                                  TableCell(
                                    child: Text('Transaction Details',
                                        textAlign: TextAlign.center),
                                  ),
                                  TableCell(
                                    child: Text('Amount Rs.',
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
                                  Text(' 12/12/23'),
                                  Text(' xx756/H&M'),
                                  Text('7,560/-'),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(' 06/12/23'),
                                  Text(' xx756/Zomato'),
                                  Text('280/-'),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text(' 06/12/23'),
                                  Text(' xx756/Amazon'),
                                  Text('2,599/-'),
                                ],
                              ),
                            ],
                          ),

                          //   Center(
                          //     child: Align(
                          //       alignment: Alignment.bottomCenter,
                          //       child: SizedBox(
                          //         width: double.infinity,
                          //         child: ElevatedButton(
                          //           onPressed: () {
                          //             Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                     builder: (context) =>
                          //                         const ESAFAdhaar()));
                          //           },
                          //           child: const Text(
                          //             "View Card Details",
                          //             style: TextStyle(
                          //                 fontSize: 20,
                          //                 fontWeight: FontWeight.w400,
                          //                 color: Colors.white),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                        ],
                      )
                    ]))));
  }
}
