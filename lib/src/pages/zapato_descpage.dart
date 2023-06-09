import 'package:flutter/material.dart';
import 'package:zapatos_app/src/widgets/custom_widgets.dart';

class ZapatoDescriptionPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ZapatoPreview(fullScreen: true),
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
                  ColorsAndMore()
                ],
              ),
            ),
          ),
        ],
      ),
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
                  left: 90, child: _CircleColor(color: Color(0xffc6d642))),
              Positioned(
                  left: 60, child: _CircleColor(color: Color(0xffffad29))),
              Positioned(
                  left: 30, child: _CircleColor(color: Color(0xff2099f1))),
              _CircleColor(color: Color(0xff364d56)),
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

  const _CircleColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
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
          OrangeBtn(text: "Buy now", width: 120, height: 40),
        ]),
      ),
    );
  }
}
