import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(secilenBurc.burcDetay + 'Burcu Detayları'),),
    );
  }
}
