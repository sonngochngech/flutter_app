import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gallery_saver/gallery_saver.dart';

class RedApp extends StatefulWidget {
  const RedApp({super.key});

  @override
  State<RedApp> createState() => _RedAppState();
}

class _RedAppState extends State<RedApp> {
  var album_name = 'Vo anh';
  void saveImage(String path) async {
    await GallerySaver.saveImage(path, albumName: album_name);
  }

  var path = [
    'https://cdn.pixabay.com/photo/2022/07/08/07/58/snow-felberich-7308729__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/13/19/34/butterfly-7319938__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/12/17/34/butterfly-7517133__340.jpg',
    'https://cdn.pixabay.com/photo/2022/04/22/13/09/landscape-7149715__340.jpg',
    'https://cdn.pixabay.com/photo/2022/05/30/13/11/blue-eryngo-7231171__340.jpg',
    'https://cdn.pixabay.com/photo/2022/06/28/08/05/blue-tit-7289097__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/04/19/54/warrior-7570627__340.jpg',
    'https://cdn.pixabay.com/photo/2022/06/25/15/54/cranesbill-7283721__340.jpg',
    'https://cdn.pixabay.com/photo/2022/09/24/14/13/mountain-7476477__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/11/15/18/butterfly-7315379__340.jpg',
    'https://cdn.pixabay.com/photo/2022/05/04/18/46/blue-anemone-7174641__340.jpg',
    'https://cdn.pixabay.com/photo/2022/06/01/19/02/illistration-7236397__340.jpg',
    'https://cdn.pixabay.com/photo/2022/07/02/12/21/surfing-7297224__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/21/22/50/portrait-7608394__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/19/09/54/blue-throated-parrot-7601707__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/01/14/31/tulips-7562532__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/29/11/53/lungwort-7099289__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/08/19/35/container-7579196__340.png',
    'https://cdn.pixabay.com/photo/2022/11/05/21/14/forms-7572807__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/27/15/06/city-7095370__340.jpg',
    'https://cdn.pixabay.com/photo/2022/05/04/17/58/forget-me-not-7174573__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/01/14/49/blue-tit-6907634__340.jpg',
    'https://cdn.pixabay.com/photo/2022/02/20/10/36/superb-fairywren-7024260__340.jpg',
    'https://cdn.pixabay.com/photo/2022/04/11/04/33/easter-eggs-7124718__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/28/04/27/ukrainian-national-colors-7096527__340.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Red Image"),
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
          color: Colors.redAccent,
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
