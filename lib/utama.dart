import 'package:aplikasi_canaiku/controller.dart';
import 'package:aplikasi_canaiku/detailesjeruk.dart';
import 'package:aplikasi_canaiku/detailesteh.dart';
import 'package:aplikasi_canaiku/detailgreentea.dart';
import 'package:aplikasi_canaiku/detailjusalpukat.dart';
import 'package:aplikasi_canaiku/detailjusmelon.dart';
import 'package:aplikasi_canaiku/detailjussemangka.dart';
import 'package:aplikasi_canaiku/detailkareayam.dart';
import 'package:aplikasi_canaiku/detailredvelvet.dart';
import 'package:aplikasi_canaiku/acc.dart';
import 'package:aplikasi_canaiku/detailburgercanai.dart';
import 'package:aplikasi_canaiku/detailkaresapi.dart';
import 'package:aplikasi_canaiku/formpage.dart';
import 'package:aplikasi_canaiku/halo.dart';
import 'package:aplikasi_canaiku/listpesanan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtamaPage extends StatelessWidget {

  final GetxTextController tc = Get.put(GetxTextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, ${tc.nameEditingController.text}"),
        backgroundColor: Color(0xff921a19),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Navigator.pop(context, '/account');
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff921a19),
              ),
              child: Center(
                child: Text(
                  "CANAIKU",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFfebe14),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Akun Pengguna"),
              onTap: () {
                Get.to(AccountPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Menu Utama"),
              onTap: () {
                Get.to(UtamaPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("List Pesanan Pengguna"),
              onTap: () {
                Get.to(ListPesanan());
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_1_outlined),
              title: Text("Tampilkan Nama Anda Di AppBar"),
              onTap: () {
                Get.to(HaloNama());
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: InkWell(
                        child: Container(
                          width: 450,
                          height: 450,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage("assets/Burger Canai.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 200,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(DetailBurgerCanai());
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Special Untuk Hari Ini !",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: placesWidget(
                            "makanan1",
                            "   " "Canai Kare Sapi",
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Makanan",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/Kare Ayam.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Canai Kare Ayam",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Canai Kare Ayam Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailKareAyam());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/Kare Sapi.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Canai Kare Sapi",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Canai Kare Sapi Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailKareSapi());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/Burger Canai.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Burger Canai Spesial",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Burger Canai Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailBurgerCanai());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/Greentea Canai.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Canai Green Tea",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Canai Green Tea Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailCanaiGreen());
                                },
                              ),
                              InkWell(
                                  child: Container(
                                    width: 120,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                "assets/Red Velvet Canai.png",
                                              ))),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Column(
                                            children: [
                                              Center(
                                                child: Text(
                                                  "Canai Red Velvet",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: Text(
                                                  "Canai Red Velvet Paling Enak",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Get.to(DetailCanaiRed());
                                  }),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Minuman",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/esjeruk.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Es Jeruk Manis",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Es Jeruk Manis Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailEsJeruk());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/esteh.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Es Teh Manis Banget",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Es Teh Manis Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailEsTeh());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/jusalpukat.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Jus Alpukat Enak",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Jus Alpukat Manis Banget",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailJusAlpukat());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/jusmelon.png",
                                            ))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Jus Melon India",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "Jus Melon India Paling Enak",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailJusMelon());
                                },
                              ),
                              InkWell(
                                child: Container(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                              "assets/jussemangka.png",
                                            ))),
                                      ),
                                      Column(
                                        children: [
                                          Center(
                                            child: Text(
                                              "Jus Semangka Semangat KK",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Center(
                                            child: Text(
                                              "Jus Semangka Bikin Semangat",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(DetailJusSemangka());
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row placesWidget(String img, String name) {
    return Row(
      children: [
        InkWell(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/Kare Sapi.png"))),
            ),
            onTap: () {
              Get.to(DetailKareSapi());
            }),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 8.0, left: 15.0),
                child: Text(
                  'RP. 27.000',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text(
                  "Perpaduan Kare Sapi Dengan Roti canai Yang Saling Melengkapi",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(FormPage());
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.green),
            child: Text(
              "Order Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
