import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> values = [
    'C',
    '+/-',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'del',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Calculator'),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Text('857 + 257 + 289'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 10.0, top: 30, bottom: 15),
                      child: Text(_counter.toString()),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, childAspectRatio: 2),
                    itemCount: values.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border:
                                Border.all(color: Colors.white12, width: 1)),
                        child: FlatButton(
                          color: (values[index] == '/')
                              ? Colors.deepPurpleAccent[700]
                              : (values[index] == 'x')
                                  ? Colors.deepPurpleAccent[700]
                                  : (values[index] == '-')
                                      ? Colors.deepPurpleAccent[700]
                                      : (values[index] == '+')
                                          ? Colors.deepPurpleAccent[700]
                                          : (values[index] == '=')
                                              ? Colors.amber
                                              : Colors.black,
                          onPressed: () {
                            setState(() {
                              _counter = int.parse(values[index]);
                              print('hello');
                              print(_counter);
                            });
                          },
                          child: Text(
                            values[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
