import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp(
    name: "Duc",
    age: 23,
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Test(
//           name: "Duc",
//           age: 20,
//         ));
//   }
// }
class MyApp extends StatefulWidget {
  late String name;
  late int age;
  MyApp({required this.name, required this.age});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState2();
  }
}

//
class _MyAppState2 extends State<MyApp> {
  late double cd = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Đây là test",
      home: Scaffold(
          appBar: AppBar(title: Text("Đây là Test StateFulWider")),
          body: Container(
              child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(cd),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Column 1 $cd"),
              ),
              RaisedButton(
                child: Text("Button"),
                onPressed: () {
                  this.setState(() {
                    cd++;
                  });
                },
              )
            ],
          ))),
    );
  }
}

//đay là statefulwidet
class _MyAppState extends State<MyApp> {
  late String _email = '';
  final emailEdditingControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "This is a StatefulWidet",
      home: Scaffold(
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                controller: emailEdditingControler,
                onChanged: (text) {
                  this.setState(() {
                    _email = text;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(20)),
                    ),
                    labelText: "Enter your email"),
              ),
            ),
            Text(_email),
            Text("Name = ${widget.name},Age=${widget.age}"),
          ],
        )),
      ),
    );
  }
}

//đây là statelesswidet
class Test extends StatelessWidget {
  late String name;
  late int age;
  Test({required this.name, required this.age});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Name:$name Age $age"),
    );
  }
}

//đay là ví dụ về stack
class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Đây là ví dụ về container")),
        body: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          fit: StackFit.passthrough,
          children: <Widget>[
            Container(
              width: 500,
              height: 500,
              color: Colors.green,
            ),
            Positioned(
                top: 30,
                right: 20,
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.yellow,
                )),
            Positioned(
                top: 30,
                left: 20,
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.red,
                )),
            Text("data")
          ],
        ));
  }
}

//đây là ví dụ về container
class ContainerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Đây là ví dụ về container")),
      body: Container(
        width: 100,
        height: 200,
        padding: EdgeInsets.all(30),
        color: Colors.red,
        child: Text("Heelo tớ là Đức"),
      ),
    );
  }
}

//đây là ví dụ về listview
class ListViewEx extends StatelessWidget {
  final myList = List<int>.generate(1000, (i) => i);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Đây là ví dụ List View"),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Text("${myList[index]}");
          },
        ),
      ),
    );
  }
}

//đây là ví dụ column
class ColumnEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Đây là Column")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: Colors.red),
              child: Text("Column 0"),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Column 1"),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: Colors.green),
              child: Text("Column 2"),
            ),
          ],
        ),
      ),
    );
  }
}

// Đây là Row Widet
class RowEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 1")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text("Duc")),
            Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text("Hưng")),
            Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text("Hùng")),
          ],
        ),
      ),
    );
  }
}
