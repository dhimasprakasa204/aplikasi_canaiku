import 'package:aplikasi_canaiku/loggedin.dart';
import 'package:aplikasi_canaiku/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      }
    
      else if (snapshot.hasData) {
        return LoggedIn();
      }
      else if (snapshot.hasError){
        return Center(child: Text('Erorr Bro'));

      }
      else{
        return LoggedIn();
      }
      
      }
    ),
  );
    
}
