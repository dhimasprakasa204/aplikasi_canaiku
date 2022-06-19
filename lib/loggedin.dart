import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoggedIn extends StatelessWidget {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME"),
      centerTitle: true,
      actions: [TextButton(child: Text("LogOut"),
      onPressed: () {},)
      ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text("Profile",
            style: TextStyle(fontSize: 30),),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(user.photoURL!),
            )
          ],
        ),
      ),
    );
  }
}