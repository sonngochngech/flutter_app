import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gallery_saver/gallery_saver.dart';

class YellowApp extends StatefulWidget {
  const YellowApp({super.key});

  @override
  State<YellowApp> createState() => _YellowAppState();
}

class _YellowAppState extends State<YellowApp> {
  var album_name = 'Vo anh';
  void saveImage(String path) async {
    await GallerySaver.saveImage(path, albumName: album_name);
  }

  var path = [
    'https://cdn.pixabay.com/photo/2022/08/23/07/17/armor-7405192__340.jpg',
    'https://cdn.pixabay.com/photo/2022/05/09/21/29/flower-7185566__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/01/14/56/abstract-7562593__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/07/19/49/background-7000157__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/31/10/09/butterfly-7355431__340.jpg',
    'https://cdn.pixabay.com/photo/2022/08/28/13/56/dragon-fly-7416777__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/20/17/41/butterfly-7334642__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/23/18/18/sea-7541840__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/28/14/07/travel-7622145__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/25/05/29/beach-7544888__340.jpg',
    'https://cdn.pixabay.com/photo/2022/06/27/06/26/woman-7286825__340.png',
    'https://cdn.pixabay.com/photo/2022/11/12/18/10/mountains-7587609__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/30/09/58/robin-7557098__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/12/06/26/poppy-anemone-7316645__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/08/14/07/network-7055821__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/10/01/26/greeting-card-6927214__340.png',
    'https://cdn.pixabay.com/photo/2022/02/13/18/22/tractor-7011767__340.png',
    'https://cdn.pixabay.com/photo/2022/04/10/10/07/blue-tit-7123051__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/14/11/50/butterfly-7321087__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/05/23/14/nature-7572959__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/05/23/14/nature-7572960__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/10/08/34/woman-7004841__340.jpg',
    'https://cdn.pixabay.com/photo/2022/06/05/14/12/blue-tit-7244138__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/07/17/56/mountain-7576940__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/24/12/11/flowers-7088921__340.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Yellow Image"),
        backgroundColor: Colors.yellow,
      ),
      body: new ListView(
        children: [
          sondz(context, path[0]),
          sondz(context, path[1]),
          sondz(context, path[2]),
          sondz(context, path[3]),
          sondz(context, path[4]),
          sondz(context, path[5]),
          sondz(context, path[6]),
          sondz(context, path[7]),
          sondz(context, path[8]),
          sondz(context, path[9]),
          sondz(context, path[10]),
          sondz(context, path[11]),
          sondz(context, path[12]),
          sondz(context, path[13]),
          sondz(context, path[14]),
          sondz(context, path[15]),
          sondz(context, path[16]),
          sondz(context, path[17]),
          sondz(context, path[18]),
          sondz(context, path[19]),
          sondz(context, path[20]),
          sondz(context, path[21]),
        ],
      ),
    );
  }

  Widget sondz(BuildContext context, String path) {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: [
          Image.network(
            path,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                saveImage(path);
              },
              child: Text("Save to gallery"))
        ],
      ),
    );
  }
}
