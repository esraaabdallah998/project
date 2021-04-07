import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
class Appointment extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Appointment> {
  var _calendarController;
  DateFormat date;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();

  }

  @override
  void dispose() {

    _calendarController.dispose();
    super.dispose();
  }
  void displayBottomSheet(BuildContext context,DateTime date) {
   var datetime = new DateFormat("yyyy,d,M").parse('2021,1,4');
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.6,
            child: Column(
             children: [
               Center(
                   child: Text(datetime.toString(),style:TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold),),
               ),
               Card(color: Colors.grey,
               child:Column(children: [
                 ListTile(
                    title: Text('Haircut(2.40 pm)'),
                   subtitle: Text("it's getting too long"),
                 ),

               ],)
               ),
               Card(color: Colors.grey,
                   child:Column(children: [
                     ListTile(
                       title: Text('collect ransom(2.40 pm)'),
                       subtitle: Text("..or else"),
                     ),

                   ],)
               )
             ],
            ),
          );
        });}
    @override
    Widget build(BuildContext context) {
      return TableCalendar(
        calendarController: _calendarController,
          headerStyle: HeaderStyle(centerHeaderTitle: true),
        onDaySelected: (date, events, _){
          setState(() {
             displayBottomSheet(context,date);
          });
        },
       );

    }
}
