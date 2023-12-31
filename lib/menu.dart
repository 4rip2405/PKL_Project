import 'package:flutter/material.dart';
import 'package:reallivetracking/prosesantar.dart';
import 'package:reallivetracking/prosesmanifest.dart';
import 'package:reallivetracking/prosesambil.dart';
import 'package:reallivetracking/prosesselesai.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  TabBar get _tabBar => TabBar(
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.location_on_rounded),
              text: "Manifest",
            ),
            Tab(
              icon: Icon(Icons.arrow_circle_up_outlined),
              text: "ambil",
            ),
            Tab(
              icon: Icon(Icons.arrow_circle_down_outlined),
              text: "antar",
            ),
            Tab(
              icon: Icon(Icons.check_circle),
              text: "selesai",
            ),
          ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pengiriman"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 24, 44),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.blue,
              child: _tabBar,
            ),
          ),
        ),
        body: TabBarView(children: [
          manifest(),
          ambil(),
          antar(),
          selesai(),
        ]),
      ),
    );
  }
}
