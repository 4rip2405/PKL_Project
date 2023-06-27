import 'package:flutter/material.dart';

class manifest extends StatelessWidget {
  const manifest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(
                5.0,
                5.0,
              ), //Offset
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,
                      color: Colors.yellow, size: 65.0),
                  SizedBox(width: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '22 Jul 22 12:13 WIB',
                        style:
                            TextStyle(fontFamily: "Belanosima", fontSize: 20),
                      ),
                      Text(
                        '#1764347863221190 | Tujuan :',
                        style:
                            TextStyle(fontFamily: "Belanosima", fontSize: 20),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Gandus Perumahan Pemkot - Bambang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Deskripsi : Paket anda sedang diproses admin',
                        style: TextStyle(fontFamily: "BebasNeue", fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
