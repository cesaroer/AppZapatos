import 'package:flutter/material.dart';

class ZapatoPreview extends StatelessWidget {
  const ZapatoPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            // Zapato con sombra
            _ZapatoConSombra(),

            // TODO tallas
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Image(
            image: AssetImage("assets/imgs/azul.png"),
          )
        ],
      ),
    );
  }
}
