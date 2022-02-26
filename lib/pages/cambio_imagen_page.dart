import 'package:testapp/controllers/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget {
  const CambioImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: GetBuilder<CambioImagenController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _.cambioImg(-1);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
                color: Colors.red,
              ),
              CircleAvatar(
                radius: 114,
                backgroundImage: NetworkImage(_.urlImg),
              ),
              IconButton(
                onPressed: () {
                  _.cambioImg(1);
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
                color: Colors.red,
              )
            ],
          );
        }),
      ),
    );
  }
}
