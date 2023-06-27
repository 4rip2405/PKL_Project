import 'package:flutter/material.dart';
import 'package:reallivetracking/order_traking_page.dart';

class antar extends StatelessWidget {
  const antar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                      Icon(Icons.arrow_circle_down_outlined,
                          color: Colors.yellow, size: 65.0),
                      SizedBox(width: 8.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '22 Jul 22 13:01 WIB',
                            style: TextStyle(
                                fontFamily: "Belanosima", fontSize: 20),
                          ),
                          Text(
                            '#1764347863221190 | Tujuan :',
                            style: TextStyle(
                                fontFamily: "Belanosima", fontSize: 20),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Gandus Perumahan Pemkot - Bambang',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Deskripsi : Paket anda sedang diantar kurir',
                            style: TextStyle(
                                fontFamily: "BebasNeue", fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderTrackingPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Lacak Lokasi',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
