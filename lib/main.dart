
import 'package:aplikasi_canaiku/acc.dart';
import 'package:aplikasi_canaiku/google_sign_in.dart';
import 'package:aplikasi_canaiku/listpesanan.dart';
import 'package:aplikasi_canaiku/login.dart';
import 'package:aplikasi_canaiku/utama.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_canaiku/splash_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_canaiku/utama.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'CANAIKU'; 

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    
    create: (context) => GoogleSignInProvider(),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: SplashScreen(),
      routes: {
        '/utama' : (context) => UtamaPage(),
        '/pesanan' : (context) => ListPesanan(),
        '/account': (context) =>  AccountPage(),
      },
    ),
  
    
    

    );
  }
