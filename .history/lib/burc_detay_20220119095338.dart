import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(secilenBurc.),
    );
  }
}
