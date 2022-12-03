import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gallery_saver/gallery_saver.dart';

class GreenApp extends StatefulWidget {
  const GreenApp({super.key});

  @override
  State<GreenApp> createState() => _GreenAppState();
}

class _GreenAppState extends State<GreenApp> {
  var album_name = 'Vo anh';
  void saveImage(String path) async {
    await GallerySaver.saveImage(path, albumName: album_name);
  }

  var path = [
    'https://cdn.pixabay.com/photo/2016/11/19/18/57/godafoss-1840758__340.jpg',
    'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729514__340.jpg',
    'https://cdn.pixabay.com/photo/2017/11/02/03/35/gothic-2910057__340.jpg',
    'https://cdn.pixabay.com/photo/2020/02/15/16/09/loveourplanet-4851331__340.jpg',
    'https://cdn.pixabay.com/photo/2017/01/08/21/11/wood-1963988__340.jpg',
    'https://cdn.pixabay.com/photo/2013/11/26/11/27/niagara-falls-218591__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/10/17/16/woman-3214594__340.jpg',
    'https://cdn.pixabay.com/photo/2017/01/16/19/40/mountains-1985027__340.jpg',
    'https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270__340.jpg',
    'https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742__340.jpg',
    'https://cdn.pixabay.com/photo/2018/06/13/18/20/waves-3473335__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/12/20/07/maldives-3220702__340.jpg',
    'https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/29/09/16/architecture-1868667__340.jpg',
    'https://cdn.pixabay.com/photo/2017/06/17/10/55/hot-air-balloon-2411851__340.jpg',
    'https://cdn.pixabay.com/photo/2019/04/10/11/56/watercolor-4116932__340.png',
    'https://cdn.pixabay.com/photo/2014/11/16/23/39/superhero-534120__340.jpg',
    'https://cdn.pixabay.com/photo/2010/12/13/10/09/nature-2384__340.jpg',
    'https://cdn.pixabay.com/photo/2016/10/11/21/43/geometric-1732847__340.jpg',
    'https://cdn.pixabay.com/photo/2018/05/14/16/54/cyber-3400789__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/16/22/39/balloons-1046658__340.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/08/splashing-275950__340.jpg',
    'https://cdn.pixabay.com/photo/2017/11/07/00/07/fantasy-2925250__340.jpg',
    'https://cdn.pixabay.com/photo/2013/06/30/18/56/butterfly-142506__340.jpg',
    'https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434__340.jpg',
    'https://cdn.pixabay.com/photo/2020/04/19/08/17/watercolor-5062356__340.jpg',
    'https://cdn.pixabay.com/photo/2017/04/07/21/22/waves-2211925__340.jpg',
    'https://cdn.pixabay.com/photo/2016/10/22/15/32/water-1761027__340.jpg',
    'https://cdn.pixabay.com/photo/2017/05/08/13/15/bird-2295431__340.jpg',
    'https://cdn.pixabay.com/photo/2017/07/08/09/45/joy-2483926__340.jpg',
    'https://cdn.pixabay.com/photo/2017/11/07/20/43/christmas-tree-2928142__340.jpg',
    'https://cdn.pixabay.com/photo/2017/11/04/08/14/tree-2916763__340.jpg',
    'https://cdn.pixabay.com/photo/2017/04/06/17/43/water-2208931__340.jpg',
    'https://cdn.pixabay.com/photo/2017/03/15/13/27/rough-horn-2146181__340.jpg',
    'https://cdn.pixabay.com/photo/2014/06/21/14/25/water-373780__340.jpg',
    'https://cdn.pixabay.com/photo/2017/02/09/15/10/sea-2052650__340.jpg',
    'https://cdn.pixabay.com/photo/2014/05/22/16/52/pyrenees-351266__340.jpg',
    'https://cdn.pixabay.com/photo/2018/05/16/22/27/rose-3407234__340.jpg',
    'https://cdn.pixabay.com/photo/2016/10/25/12/28/iceland-1768744__340.jpg',
    'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634__340.png',
    'https://cdn.pixabay.com/photo/2017/05/11/23/21/mount-fuji-2305606__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/14/22/18/beach-1824855__340.jpg',
    'https://cdn.pixabay.com/photo/2018/02/04/09/09/brushes-3129361__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/29/09/32/concept-1868728__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/09/04/53/texture-2613518__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/24/13/30/spain-7614361__340.jpg',
    'https://cdn.pixabay.com/photo/2022/11/28/21/13/leaf-7623202__340.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Green Image"),
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
          color: Colors.lightGreenAccent,
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
