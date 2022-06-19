import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final String Nama;
  final String Alamat;
  final String HP;
  final String Ayam;
  final String Sapi;
  final String Burger;
  final String Greentea;
  final String Redvelvet;
  final String Esteh;
  final String Esjeruk;
  final String Jusmelon;
  final String Jusalpukat;
  final String Jussemangka;
  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  ItemCard(
      this.Nama,
      this.Alamat,
      this.HP,
      this.Ayam,
      this.Sapi,
      this.Burger,
      this.Greentea,
      this.Redvelvet,
      this.Esteh,
      this.Esjeruk,
      this.Jusmelon,
      this.Jusalpukat,
      this.Jussemangka,
      {this.onUpdate,
      this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xfff78000))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  Nama,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Text("Alamat : $Alamat"),
              Text("No HP : $HP"),
              Text("Canai Kare Ayam : $Ayam"),
              Text("Canai Kare Sapi : $Sapi"),
              Text("Burger Canai : $Burger"),
              Text("Canai Cheese Green Tea : $Greentea"),
              Text("Canai Red Velvet : $Redvelvet"),
              Text("Es Teh : $Esteh"),
              Text("Es Jeruk : $Esjeruk"),
              Text("Jus Alpukat : $Jusalpukat"),
              Text("Jus Melon : $Jusmelon"),
              Text("Jus Semangka : $Jussemangka"),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.green[900],
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (onUpdate != null) onUpdate!();
                    }),
              ),
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.red[900],
                    ),
                    child: Center(
                        child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (onDelete != null) onDelete!();
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
