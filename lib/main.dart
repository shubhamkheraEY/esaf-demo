import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sar/HL/addBankHL.dart';
import 'package:sar/HL/verifyITR.dart';
import 'package:sar/PL/approval.dart';
import 'package:sar/PL/infoPL.dart';
import 'package:sar/PL/emailLogin.dart';
import 'package:sar/home.dart';
import 'package:sar/esaf/esafMobile.dart';
import 'package:sar/selectLoan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBR-ToO0iB4x-L2iLMiL-nUCrw1Ba2b3Oc',
    appId: '1:1053815999383:web:602761fcd84ded965412d2',
    messagingSenderId: '1053815999383',
    projectId: 'sardemo-pl',
    storageBucket: 'sardemo-pl.appspot.com',
  ));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ESAFMobile(),
      // home: AddBank(),
      // home: VerifyITR(),
      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.active) {
      //       // Checking if the snapshot has any data or not
      //       if (snapshot.hasData) {
      //         // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
      //         return const SelectLoanType();
      //       } else if (snapshot.hasError) {
      //         return Center(
      //           child: Text('${snapshot.error}'),
      //         );
      //       }
      //     }

      //     // means connection to future hasnt been made yet
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(color: Colors.red),
      //       );
      //     }

      //     return const HomePage();
      //   },
      // ),
      // // home: HomePage(),
      // home: TestingLoginScreen(),
      theme: ThemeData(
        // AppBar theme
        // primarySwatch: buildMaterialColor(Color(0xFFF7B61A)),
        primaryColor: Color.fromARGB(255, 252, 252, 251),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(252, 251, 251, 1),
            centerTitle: false),

// Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 228, 18, 3),
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            // side: const BorderSide(color: Color.fromRGBO(251, 25, 41, 1)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),

// textformfield
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromRGBO(6, 2, 117, 1)),
        ),

// Text Button
        // textButtonTheme: TextButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //       foregroundColor: Color.fromRGBO(255, 31, 41, 1)),
        // ),

// checkbox theme
        unselectedWidgetColor: Color.fromARGB(255, 25, 2, 116),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          fillColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 25, 2, 116),
          ),
        ),

        // title and subtitle fontSize and color
        listTileTheme: const ListTileThemeData(
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          // subtitleTextStyle: TextStyle(fontSize: 14),
          textColor: Color.fromARGB(255, 1, 1, 94),
        ),

        // text box outline color
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 18),
          filled: false,
          labelStyle: TextStyle(
            color: Color(0xFFBABABA),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor:
              MaterialStateColor.resolveWith((states) => Color(0xFFE11F2A)),
        ), //
// cursor color
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}
