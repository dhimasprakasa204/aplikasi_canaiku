import 'package:aplikasi_canaiku/formpage.dart';
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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
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
                Get.to((UtamaPage()));
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
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Image.asset(
              "assets/LOGO UTAMA.png",
              width: 750,
              height: 250,
            ),
            Text(
              "SELAMAT DATANG DI CANAIKU",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(2, 1),
                        blurRadius: 3)
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Silahkan Login",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(2, 1),
                        blurRadius: 3)
                  ]),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.minPositive, 60),
              ),
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              label: Text('Login Dengan Akun Google'),
              onPressed: signIn,
            )
          ],
        ),
      );
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
