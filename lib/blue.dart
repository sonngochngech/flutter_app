import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gallery_saver/gallery_saver.dart';

class BlueApp extends StatefulWidget {
  const BlueApp({super.key});

  @override
  State<BlueApp> createState() => _BlueAppState();
}

class _BlueAppState extends State<BlueApp> {
  var path = [
    'https://cdn.sforum.vn/sforum/wp-content/uploads/2022/05/43-1.jpg',
    'https://cdn.pixabay.com/photo/2013/07/19/00/18/splashing-165192__340.jpg',
    'https://cdn.pixabay.com/photo/2016/04/15/04/02/water-1330252__340.jpg',
    'https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014__340.jpg',
    'https://cdn.pixabay.com/photo/2015/03/22/23/07/bora-bora-685303__340.jpg',
    'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__340.jpg',
    'https://cdn.pixabay.com/photo/2014/07/16/05/18/beach-394503__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/14/22/18/beach-1824855__340.jpg',
    'https://cdn.pixabay.com/photo/2017/04/06/17/43/water-2208931__340.jpg',
    'https://cdn.pixabay.com/photo/2017/04/07/21/22/waves-2211925__340.jpg',
    'https://cdn.pixabay.com/photo/2017/10/10/07/48/beach-2836300__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/10/17/16/woman-3214594__340.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/08/splashing-275950__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/01/19/22/blue-naped-mousebird-7492084__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/06/03/23/kid-7573183__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/24/13/27/spain-7614359__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/19/20/44/blue-tit-7602970__340.jpg',
    'https://cdn.pixabay.com/photo/2022/03/22/15/27/flower-7085318__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/18/16/44/spain-7600536__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/13/17/25/bird-7589726__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/13/13/08/sky-7519058__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/04/18/53/fantastic-6915743__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/17/12/42/spain-7597966__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/08/20/31/christmas-7579272__340.png',
    'https://cdn.pixabay.com/photo/2022/09/25/09/32/hintersee-7477924__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/28/20/09/blue-tit-7623100__340.jpg',
    'https://cdn.pixabay.com/photo/2022/10/04/06/51/bee-7497457__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/18/16/45/spain-7600537__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/24/13/20/spain-7614350__340.jpg',
  ];
  var album_name = 'Vo anh';
  void saveImage(String path) async {
    await GallerySaver.saveImage(path, albumName: album_name);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Blue Image"),
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
          color: Colors.blueAccent,
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
