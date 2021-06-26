import 'package:covid_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class DisplayHospital extends StatefulWidget {
  @override
  _DisplayHospitalState createState() => _DisplayHospitalState();
}

class _DisplayHospitalState extends State<DisplayHospital> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
    print(data);
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return new Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(itemCount: data["hospName"].length,itemBuilder: (context,index){
          print(index);
          return Padding(padding: EdgeInsets.all(3.0),
            child: Card(
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.home_work,
                  color: Colors.red,),
                        title: Text(data["hospName"][index],
                            style: TextStyle(
                              fontSize: 14.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                      subtitle: Text("NAME",
                      style: TextStyle(
                        color: darkTheme.primaryColorLight
                      ),),
                    ),
                    ListTile(
                        leading: Icon(Icons.accessibility,
                          color: Colors.green,),
                        title: Text(data["type"][index],
                        style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 2.0,
                          color: darkTheme.primaryColor,)),
                    subtitle:Text("TYPE",
                      style: TextStyle(
                          color: darkTheme.primaryColorLight
                      ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city,
                        color: Colors.blueGrey,),
                        title: Text(data["district"][index],
                          style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 2.0,
                          color: darkTheme.primaryColor,)
                        ),
                      subtitle: Text("DISTRICT",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on,
                        color: Colors.red[500],),
                      title: Text(data["address"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("ADDRESS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.quick_contacts_dialer,
                        color: Colors.blue,),
                      title: Text(data["contact"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("CONTACT",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.king_bed,
                        color: Colors.grey[700],),
                      title: Text(data["total"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("TOTAL BEDS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.event_available,
                        color: Colors.green,),
                      title: Text(data["vacant"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("VACANT BEDS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.single_bed_sharp,
                        color: Colors.red[500],),
                      title: Text(data["covidBedsRegula"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("ICU BEDS TOTAL",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.event_available_outlined,
                        color: Colors.green,),
                      title: Text(data["covidBedsVacant"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("ICU BEDS AVAILABLE",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.masks,
                        color: Colors.blueGrey,),
                      title: Text(data["covidBedsOxygenTotal"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("TOTAL OXYGEN BEDS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.masks_sharp,
                        color: Colors.greenAccent,),
                      title: Text(data["covidBedsOxygenVacant"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("AVAILABLE OXYGEN BEDS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.airline_seat_individual_suite,
                        color: Colors.red,),
                      title: Text(data["ccuBedsWithVantilatorTotal"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("AVAILABLE VENTILATORS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.check,
                        color: Colors.green,),
                      title: Text(data["hasIcuBeds"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("HAS ICU BEDS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.check,
                        color: Colors.green,),
                      title: Text(data["hasVantilators"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("HAS VENTILATORS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.check,
                        color: Colors.green,),
                      title: Text(data["isNewHospital"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("NEW HOSPITAL",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 6,
                    ),
                    Center(
                      child: FlatButton.icon(onPressed: () async {
                        //print(data["loc"][index]);
                        await Navigator.pushNamed(context, "/mapDisplay");
                      }, icon: Icon(
                        Icons.edit_location,
                        color: Colors.blue[700],
                      ), label: Text("Find On Map",
                        style: TextStyle(
                            color: Colors.black
                        ),)),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
