import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          title: Text(secilenBurc.burcAdi + ' Burcu'),
        ),
        body: Center(
          child: Column(
            children: [
              //Text(secilenBurc.burcAdi),
              Text(
                secilenBurc.burcTarih,
                style: myTextStyle.headline5,
                
              ),
              Text(secilenBurc.burcDetay),
            ],
          ),
        ));
  }
}
