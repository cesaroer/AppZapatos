import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zapatos_app/src/models/zapato_model.dart';
import 'package:zapatos_app/src/widgets/custom_widgets.dart';

class ZapatoDescriptionPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: "zapato_1",
                child: ZapatoPreview(fullScreen: true),
              ),
              Positioned(
                top: 60,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 50,
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  const ZapatoDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _MontoBuyNow(),
                  ColorsAndMore(),
                  _BtnsLikeCartSettings()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BtnsLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BtnWithShadow(icon: Icon(Icons.star, color: Colors.red, size: 25)),
          _BtnWithShadow(
              icon: Icon(Icons.shopping_bag,
                  color: Colors.grey.withOpacity(0.4), size: 25)),
          _BtnWithShadow(
              icon: Icon(Icons.settings,
                  color: Colors.grey.withOpacity(0.4), size: 25)),
        ],
      ),
    );
  }
}

class _BtnWithShadow extends StatelessWidget {
  final Icon icon;

  const _BtnWithShadow({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: icon,
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
    );
  }
}

class ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 90,
                  child: _CircleColor(
                      color: Color(0xffc6d642),
                      index: 4,
                      assetImageName: 'assets/imgs/verde.png')),
              Positioned(
                  left: 60,
                  child: _CircleColor(
                      color: Color(0xffffad29),
                      index: 3,
                      assetImageName: 'assets/imgs/amarillo.png')),
              Positioned(
                  left: 30,
                  child: _CircleColor(
                      color: Color(0xff2099f1),
                      index: 2,
                      assetImageName: 'assets/imgs/azul.png')),
              _CircleColor(
                  color: Color(0xff364d56),
                  index: 1,
                  assetImageName: 'assets/imgs/negro.png'),
            ],
          )),
          OrangeBtn(
              text: "More related items",
              height: 30,
              width: 170,
              color: Color.fromARGB(255, 245, 199, 136)),
        ],
      ),
    );
  }
}

class _CircleColor extends StatelessWidget {
  final Color color;
  final int index;
  final String assetImageName;

  _CircleColor(
      {required this.color, required this.index, required this.assetImageName});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: Duration(milliseconds: 700),
      child: GestureDetector(
        onTap: () {
          final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
          zapatoModel.assetImage = assetImageName;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 15, bottom: 20),
        child: Row(children: [
          const Text(
            "\$180.0",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const Spacer(),
          Bounce(
            delay: Duration(seconds: 1),
            from: 6,
            child: OrangeBtn(text: "Buy now", width: 120, height: 40),
          ),
        ]),
      ),
    );
  }
}
