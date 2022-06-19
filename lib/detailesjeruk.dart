import 'package:aplikasi_canaiku/acc.dart';
import 'package:aplikasi_canaiku/formpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailEsJeruk extends StatelessWidget {
  const DetailEsJeruk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Get.off(AccountPage());
              }),
        ],
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              child: Container(
                width: 400,
                height: 400,
                margin: EdgeInsets.only(top: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/esjeruk.png"),
                  ),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Es Jeruk Manis",
              style: TextStyle(
                  fontSize: 37,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 16),
            Text(
              "RP. 5.000",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 18),

            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                textAlign: TextAlign.justify,
                "Dibuat dengan jeruk segar pilihan sangat pas untuk melepas dahaga",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(height: 20),
                        Container(
              width: 140,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFFfebe14)),
                  onPressed: () {
                    Get.to(FormPage());
                  },
                  child: Text(
                    "BELI SEKARANG",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 10),
            // InkWell(
            //   child: Container(
            //     width: 60,
            //     height: 60,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage("assets/back.png"),
            //       ),
            //     ),
            //   ),
            //   onTap: () {
            //     Get.to(Navigation());
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
