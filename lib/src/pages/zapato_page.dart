import 'package:flutter/material.dart';
import 'package:zapatos_app/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppBar(text: 'For You'),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ZapatoPreview(),
                ZapatoDescription(
                  title: 'Nike Air Max 720',
                  description:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
              ],
            ),
          ),
        ),
        AgregarCarritoBtn(monto: 180.0),
      ],
    ));
  }
}

class AgregarCarritoBtn extends StatelessWidget {
  final double monto;

  const AgregarCarritoBtn({required this.monto});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(
              "\$$monto",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            Spacer(),
            OrangeBtn(text: "Add to cart"),
            SizedBox(width: 20)
          ],
        ),
      ),
    );
  }
}
