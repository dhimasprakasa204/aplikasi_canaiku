import 'package:aplikasi_canaiku/utama.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_canaiku/listpesanan.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String nama = "", alamat = "", hp = "";
  String ayam = "", sapi = "", burger = "", greentea = "", redvelvet = "";
  String esteh = "",
      esjeruk = "",
      jusalpukat = "",
      jusmelon = "",
      jussemangka = "";

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  TextEditingController controllerHp = TextEditingController();
  TextEditingController controllerAyam = TextEditingController();
  TextEditingController controllerSapi = TextEditingController();
  TextEditingController controllerBurger = TextEditingController();
  TextEditingController controllerGreentea = TextEditingController();
  TextEditingController controllerRedvelvet = TextEditingController();
  TextEditingController controllerEsteh = TextEditingController();
  TextEditingController controllerEsjeruk = TextEditingController();
  TextEditingController controllerJusalpukat = TextEditingController();
  TextEditingController controllerJusmelon = TextEditingController();
  TextEditingController controllerJussemangka = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection("pesanan");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff921a19),
        leading: Image(image: AssetImage("assets/LOGO UTAMA.png")),
        title: Text("HALAMAN PEMESANAN"),
      ),
      backgroundColor: Color(0xFF1D8969),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "PESANAN",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFfebe14),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Silahkan Mengisi Kolom dengan Benar",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFfebe14),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerNama,
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerAlamat,
              decoration: InputDecoration(
                labelText: "Masukkan Alamat Anda",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerHp,
              decoration: InputDecoration(
                labelText: "Masukkan No HP Anda",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerAyam,
              decoration: InputDecoration(
                labelText: "Jumlah Pesanan Canai Kare Ayam",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerSapi,
              decoration: InputDecoration(
                labelText: "Jumlah Pesanan Canai Kare Sapi",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerBurger,
              decoration: InputDecoration(
                labelText: "Jumlah Pesanan Burger Canai",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerGreentea,
              decoration: InputDecoration(
                labelText: "Jumlah Canai Green Tea",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerRedvelvet,
              decoration: InputDecoration(
                labelText: "Jumlah Canai Red Velvet",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerEsteh,
              decoration: InputDecoration(
                labelText: "Jumlah Es Teh",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerEsjeruk,
              decoration: InputDecoration(
                labelText: "Jumlah Es Jeruk",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerJusmelon,
              decoration: InputDecoration(
                labelText: "Jumlah Jus Melon",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerJusalpukat,
              decoration: InputDecoration(
                labelText: "Jumlah Jus Alpukat",
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
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              controller: controllerJussemangka,
              decoration: InputDecoration(
                labelText: "Jumlah Jus Semangka",
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
            SizedBox(
              height: 10,
            ),
            Container(
              width: 140,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFfebe14)),
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text("PESANAN BERHASIL"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  setState(() {
                    nama = controllerNama.text;
                    alamat = controllerAlamat.text;
                    hp = controllerHp.text;
                    ayam = controllerAyam.text;
                    sapi = controllerSapi.text;
                    burger = controllerBurger.text;
                    greentea = controllerGreentea.text;
                    redvelvet = controllerRedvelvet.text;
                    esteh = controllerEsteh.text;
                    esjeruk = controllerEsjeruk.text;
                    jusalpukat = controllerJusalpukat.text;
                    jusmelon = controllerJusmelon.text;
                    jussemangka = controllerJussemangka.text;
                  });
                  pesanan.add({
                    'Nama': controllerNama.text,
                    'Alamat': controllerAlamat.text,
                    'No HP': controllerHp.text,
                    'Jumlah Canai Kare Ayam': controllerAyam.text,
                    'Jumlah Canai Kare Sapi': controllerSapi.text,
                    'Jumlah Burger Canai': controllerBurger.text,
                    'Jumlah Canai Cheese Green Tea': controllerGreentea.text,
                    'Jumlah Canai Red Velvet': controllerRedvelvet.text,
                    'Jumlah Es Teh': controllerEsteh.text,
                    'Jumlah Es Jeruk': controllerEsjeruk.text,
                    'Jumlah Jus Alpukat': controllerJusalpukat.text,
                    'Jumlah Jus Melon': controllerJusmelon.text,
                    'Jumlah Jus Semangka': controllerJussemangka.text,
                  });
                  controllerNama.text = '';
                  controllerAlamat.text = '';
                  controllerHp.text = '';
                  controllerAyam.text = '';
                  controllerSapi.text = '';
                  controllerBurger.text = '';
                  controllerGreentea.text = '';
                  controllerRedvelvet.text = '';
                  controllerEsteh.text = '';
                  controllerEsjeruk.text = '';
                  controllerJusalpukat.text = '';
                  controllerJusmelon.text = '';
                  controllerJussemangka.text = '';
                },
                child: Text("Pesan Sekarang"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 140,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFfebe14)),
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text("BERHASIL KE HALAMAN LIST PESANAN"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  Get.to(ListPesanan());
                },
                child: Text("Lihat List Pesanan"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 140,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFfebe14)),
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text("BERHASIL KEMBALI"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                  Get.to(UtamaPage());
                },
                child: Text("Kembali"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Nama Pelanggan : $nama"),
            Text("Alamat Pelanggan : $alamat"),
            Text("No HP Pelanggan : $hp"),
            Text("Total Pesanan Canai Kare Ayam : $ayam"),
            Text("Total Pesanan Canai Kare Sapi : $sapi"),
            Text("Total Pesanan Burger Canai : $burger"),
            Text("Total Pesanan Canai Cheese Green Tea : $greentea"),
            Text("Total Pesanan Canai Red Velvet : $redvelvet"),
            Text("Total Pesanan Es Teh : $esteh"),
            Text("Total Pesanan Es Jeruk : $esjeruk"),
            Text("Total Pesanan Jus Alpukat : $jusalpukat"),
            Text("Total Pesanan Jus Melon : $jusmelon"),
            Text("Total Pesanan Jus Semangka : $jussemangka"),
          ],
        ),
      ),
    );
  }
}
