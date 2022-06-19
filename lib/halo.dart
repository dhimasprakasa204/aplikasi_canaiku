import 'package:aplikasi_canaiku/controller.dart';
import 'package:aplikasi_canaiku/utama.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaloNama extends StatelessWidget {
  HaloNama({Key? key}) : super(key: key);

  final GetxTextController tc = Get.put(GetxTextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Center(
        child: ListView(
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
                      image: AssetImage("assets/LOGO UTAMA.png"),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                controller: tc.nameEditingController,
                decoration: InputDecoration(
                  labelText: "Masukkan Nama Anda",
                  labelStyle: TextStyle(fontSize: 18, color: Color(0xFFfebe14)),
                  hintStyle: TextStyle(color: Color(0xFFfebe14)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFfebe14), width: 2.0),
                      borderRadius: BorderRadius.circular(20.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFfebe14), width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 140,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFfebe14)),
                    onPressed: () {
                      Get.to(UtamaPage());
                    },
                    child: Text(
                      "TAMPILKAN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(height: 10),
            ],
          ),
      ),
      );
  }
}
