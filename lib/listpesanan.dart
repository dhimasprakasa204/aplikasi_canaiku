import 'package:aplikasi_canaiku/acc.dart';
import 'package:aplikasi_canaiku/utama.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_canaiku/formpage.dart';
import 'package:aplikasi_canaiku/itemcard.dart';

class ListPesanan extends StatefulWidget {
  const ListPesanan({Key? key}) : super(key: key);

  @override
  State<ListPesanan> createState() => _ListPesananState();
}

class _ListPesananState extends State<ListPesanan> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection("pesanan");
    return Scaffold(
      appBar: AppBar(
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
          ],
        ),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: pesanan.snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => ItemCard(
                                    e.get('Nama'),
                                    e.get('Alamat'),
                                    e.get('No HP'),
                                    e.get('Jumlah Canai Kare Ayam'),
                                    e.get('Jumlah Canai Kare Sapi'),
                                    e.get('Jumlah Burger Canai'),
                                    e.get('Jumlah Canai Cheese Green Tea'),
                                    e.get('Jumlah Canai Red Velvet'),
                                    e.get('Jumlah Es Teh'),
                                    e.get('Jumlah Es Jeruk'),
                                    e.get('Jumlah Jus Alpukat'),
                                    e.get('Jumlah Jus Melon'),
                                    e.get('Jumlah Jus Semangka'), onUpdate: () {
                                  pesanan.doc(e.id).update(
                                    {
                                      "Nama":
                                          e.get('Nama') + ' (Sudah Bayar Lunas)'
                                    },
                                  );
                                }, onDelete: () {
                                  pesanan.doc(e.id).delete();
                                }),
                              )
                              .toList(),
                        )
                      : Text('Loading...');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text("BERHASIL KEMBALI"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  Get.off(UtamaPage());
                },
                child: Text("Kembali"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
