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
      ],
    ));
  }
}
