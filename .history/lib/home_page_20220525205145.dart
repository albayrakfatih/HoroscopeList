import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/burc_telifsiz.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => BurcListesi(),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_forward)),
              // Text(
              //   "Burçlar & Özellikleri",
              //   style: TextStyle(
              //       fontSize: 46,
              //       fontFamily: "Arial",
              //       decoration: TextDecoration.none,
              //       color: Colors.black),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
