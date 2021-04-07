import 'package:flutter/material.dart';
class MyTasks extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<MyTasks> {
  bool firstvalue = true;
  bool secondvalue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                SizedBox(width: 10,),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Take Out The garbage',style: TextStyle(decoration: TextDecoration.lineThrough)),
                  subtitle: Text('March 31,2019',style: TextStyle(decoration: TextDecoration.lineThrough)),
                  value: this.firstvalue,
                  onChanged: (bool value) {
                    setState(() {
                      this.firstvalue = value;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Clear the gutters'),
                  value: this.secondvalue,
                  onChanged: (bool value) {
                    setState(() {
                      this.secondvalue = value;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Wash the Car'),
                  subtitle: Text('March 13,2019'),
                  value: this.secondvalue,
                  onChanged: (bool value) {
                    setState(() {
                      this.secondvalue = value;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Go-grocery shopping',style: TextStyle(decoration: TextDecoration.lineThrough)),
                  value: this.firstvalue,
                  onChanged: (bool value) {
                    setState(() {
                      this.firstvalue = value;
                    });
                  },
                ),
              ],
            )
        ),
      ),debugShowCheckedModeBanner:false,
    );
  }
}

