import 'package:flutter/material.dart';
import 'tech.dart';

void main() => runApp(MyApp());

enum type {
  headline,
  carousel,
}

List cats = [
  /*{
    'title': '',
    'color': Colors.purple,
    'type': type.headline,
  },*/
  {
    'title': 'this is title 1',
    'color': Colors.orange,
    'techs': 10,
    'type': type.carousel,
  },
  {
    'title': 'this is title 2',
    'color': Colors.blue,
    'techs': 20,
    'type': type.carousel,
  },
  {
    'title': 'this is title 3',
    'color': Colors.green,
    'techs': 30,
    'type': type.carousel,
  },
  {
    'title': 'this is title 4',
    'color': Colors.orange,
    'techs': 10,
    'type': type.carousel,
  },
  {
    'title': 'this is title 5',
    'color': Colors.blue,
    'techs': 20,
    'type': type.carousel,
  },
  {
    'title': 'this is title 6',
    'color': Colors.green,
    'techs': 30,
    'type': type.carousel,
  },
  {
    'title': 'this is title 7',
    'color': Colors.orange,
    'techs': 10,
    'type': type.carousel,
  },
  {
    'title': 'this is title 8',
    'color': Colors.blue,
    'techs': 20,
    'type': type.carousel,
  },
  {
    'title': 'this is title 9',
    'color': Colors.green,
    'techs': 30,
    'type': type.carousel,
  },
  {
    'title': 'this is title 10',
    'color': Colors.orange,
    'techs': 10,
    'type': type.carousel,
  },
  {
    'title': 'this is title 11',
    'color': Colors.blue,
    'techs': 20,
    'type': type.carousel,
  },
  {
    'title': 'this is title 12',
    'color': Colors.green,
    'techs': 30,
    'type': type.carousel,
  },
  {
    'title': 'this is title 13',
    'color': Colors.orange,
    'techs': 10,
    'type': type.carousel,
  },
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JudoFlix',
      theme: ThemeData.dark(
//        primarySwatch: Colors.green,
          ),
      home: MyHomePage(title: 'JudoFlix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildCat(int idx) {
    var cat = cats[idx];
    return Container(
      height: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 10.0),
            child: Text(
              cat['title'],
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: EdgeInsets.all(5.0),
              children: List<Tech>.generate(
                cat['techs'],
                (index) => Tech(
                    item: {'txt': index.toString(), 'color': cat['color']}),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: List<Widget>.generate(cats.length, (index) => buildCat(index))
            .toList(),
      ),
    );
  }
}
