import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
class Notes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children:[ Card(child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text('Bad Chemistry'),
            subtitle: Text("Don't add floorine to hydrogen. thats bad "),
          )
        ],),color: Colors.yellow,shadowColor: Colors.grey,elevation: 20.0,),
          Card(child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text("Ohm's Low"),
                subtitle: Text('the current through a conductor between two points is directly proportional to the voltage across the two points.'),
              )
            ],),color: Colors.white,shadowColor: Colors.grey,elevation: 20.0,),
          Card(child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text('Greate Sci-Fi Books'),
                subtitle: Text('The Blazing World, by Margaret Cavendish (1666) Frankenstein, by Mary Shelley (1818) Foundation, by Isaac Asimov (1951) The Stars My Destination.'),
              )
            ],),color: Colors.red,shadowColor: Colors.grey,elevation: 20.0,)
        ],
      ) );
  }
}

