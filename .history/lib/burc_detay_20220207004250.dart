import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          backgroundColor: appBarRengi,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              "images/" + widget.secilenBurc.burcBuyukResim,
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
                widget.secilenBurc.burcDetay,
                style: myTextStyle.subtitle1,
              ),
            ),
          ),
        )
      ],
    ));
  }

  void appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/" + widget.secilenBurc.burcBuyukResim));
    appBarRengi = _generator.dominantColor!.color;

    setState(() {});
  }
}

mixin PaletteGenerator {}
