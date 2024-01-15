import 'package:flutter/material.dart';
import 'package:sar/esaf/esafCardDetails.dart';

bool isChecked = false;

class ESAFCardCongrats extends StatefulWidget {
  const ESAFCardCongrats({super.key});

  @override
  State<ESAFCardCongrats> createState() => _ESAFCardCongratsState();
}

class _ESAFCardCongratsState extends State<ESAFCardCongrats> {
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
                              "Congratulations Amit!",
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
                              "Your ESAF Rewards Credit Card is ready for use.",
                              style: TextStyle(
                                fontSize: 13, // Adjust font size as needed
                                color: Colors
                                    .black, // Ensure text visibility on red background
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
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
                                                const ESAFCardDetails()));
                                  },
                                  child: const Text(
                                    "View Card Details",
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
