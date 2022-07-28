import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          backgroundColor: Colors.pink,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              "images/" + secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow.shade200, Colors.red.shade400],
              ),
            ),
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetay,
                style: myTextStyle.subtitle1,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
