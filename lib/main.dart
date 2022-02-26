import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/controllers/cambio_imagen_controller.dart';
import 'package:testapp/pages/cambio_imagen_page.dart';

void main() {
  Get.lazyPut(() => CambioImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDGS10-1',
      initialRoute: '/cambio/imagen',
      routes: {
        '/cambio/imagen': (context) => const CambioImagenPage(),
      },
    );
  }
}
