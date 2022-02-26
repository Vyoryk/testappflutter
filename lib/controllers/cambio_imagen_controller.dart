import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    urlImg = mapa[indexUrlImg].toString();
  }

  String urlImg = '';
  int indexUrlImg = 0;
  Map<int, String> mapa = {
    0: 'https://smoda.elpais.com/wp-content/uploads/2020/06/bob-esponja.jpg',
    1: 'https://media.revistagq.com/photos/5ca5f6a77a3aec0df5496c59/master/w_1600%2Cc_limit/bob_esponja_9564.png',
    2: 'https://media.gq.com.mx/photos/5bfdcc8f4958a1bc759a27bd/3:2/w_1011,h_674,c_limit/bob%20esponja.jpg',
    3: 'https://yt3.ggpht.com/ytc/AKedOLS3Qq-y2AN0Eq8Bzx9MhucLCez0BZ3Ywa05MjwnTw=s900-c-k-c0x00ffffff-no-rj',
    4: 'https://estaticos-cdn.elperiodico.com/clip/6040f332-9afa-471d-b076-c060ae37450a_alta-libre-aspect-ratio_default_0.jpg',
    5: 'https://e00-elmundo.uecdn.es/television/programacion-tv/img/v2/programas/24/618532.png',
    6: 'https://static2.abc.es/media/play/2020/06/15/bobesponja-k1pG--1200x630@abc.jpg',
    7: 'https://as01.epimg.net/meristation/imagenes/2019/10/25/noticias/1572002941_916672_1572003064_noticia_normal.jpg',
    8: 'https://e.rpp-noticias.io/normal/2020/06/14/044004_956772.jpg',
    9: 'https://www.egames.news/__export/1631981219751/sites/debate/img/2021/09/18/spongebob-squarepants-1.jpg_976912859.jpg'
  };
  int suma = 0;
  void cambioImg(int valor) {
    suma = indexUrlImg + valor;
    indexUrlImg = suma <= -1
        ? (indexUrlImg = 9)
        : suma >= 10
            ? (indexUrlImg = 0)
            : suma;
    urlImg = mapa[indexUrlImg].toString();
    update();
  }
}
