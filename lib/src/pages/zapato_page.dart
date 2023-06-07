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
        ZapatoPreview(),
      ],
    ));
  }
}
