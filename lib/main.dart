import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zapatos_app/src/models/zapato_model.dart';
import 'package:zapatos_app/src/pages/zapato_descpage.dart';
import 'package:zapatos_app/src/pages/zapato_page.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ZapatoModel();
          },
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ZapatoPage(),
    );
  }
}
