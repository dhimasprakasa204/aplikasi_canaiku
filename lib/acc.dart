import 'package:aplikasi_canaiku/formpage.dart';
import 'package:aplikasi_canaiku/login.dart';
import 'package:aplikasi_canaiku/utama.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccState createState() => _AccState();
}

class _AccState extends State<AccountPage> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),home :Scaffold(
      backgroundColor: Color(0xFF1D8969),
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        actions: [
          IconButton(icon: Icon(Icons.logout_outlined), onPressed: signOut),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: _buildWidget(),
      ),
      ),
    );
  }

  Widget _buildWidget() {
    GoogleSignInAccount? user = _currentUser;
    if (user != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(2, 12, 2, 12),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/acc1.png")),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              user.displayName ?? '',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Text(
              user.email,
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.minPositive, 50),
              ),
              onPressed: () {
                Get.to(UtamaPage());
              },
              child: Text("GET STARTED"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    } else {
      return UtamaPage()
      

      ;
    }
  }

  void signOut() {
    _googleSignIn.disconnect();
  }

  Future<void> signIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (e) {
      print('Error signing in $e');
    }
  }
}
