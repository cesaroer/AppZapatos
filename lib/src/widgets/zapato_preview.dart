import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zapatos_app/src/pages/zapato_descpage.dart';

class ZapatoPreview extends StatelessWidget {
  final bool fullScreen;

  ZapatoPreview({required this.fullScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ZapatoDescriptionPAge();
          }));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 5 : 30,
          vertical: (fullScreen) ? 5 : 0,
        ),
        child: Container(
          width: double.infinity,
          height: (fullScreen) ? 410 : 430,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              // Zapato con sombra
              _ZapatoConSombra(),

              if (!fullScreen) _ZapatoTallas()
            ],
          ),
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
          Positioned(
            bottom: 0,
            right: 0,
            child: _ZapatoSombra(),
          ),
          Image(image: AssetImage("assets/imgs/azul.png")),
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 223, 152, 70), blurRadius: 35),
          ],
        ),
        width: 230,
        height: 120,
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoBox(size: 7),
          _TallaZapatoBox(size: 7.5),
          _TallaZapatoBox(size: 8),
          _TallaZapatoBox(size: 8.5),
          _TallaZapatoBox(size: 9),
          _TallaZapatoBox(size: 9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoBox extends StatelessWidget {
  final double size;

  const _TallaZapatoBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        size.toString().replaceAll(".0", ""),
        style: TextStyle(
          color: (size != 9.0) ? Color(0xfff1a23a) : Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (size == 9.0) ? Color(0xfff1a23a) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (size == 9.0)
            BoxShadow(
              color: Color(0xfff1a23a),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
        ],
      ),
    );
  }
}
