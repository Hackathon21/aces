import 'package:covid_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class MapData extends StatefulWidget {
  @override
  _MapDataState createState() => _MapDataState();
}
class _MapDataState extends State<MapData> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
        return new Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(itemCount: data["name"].length,itemBuilder: (context,index){
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
                      title: Text(data["name"][index],
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
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city,
                        color: Colors.blueGrey,),
                      title: Text(data["district_name"][index],
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
                    ListTile(
                      leading: Icon(Icons.account_balance_rounded,
                        color: Colors.grey[700],),
                      title: Text(data["state_name"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("STATE",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.monetization_on,
                        color: Colors.blue[700],),
                      title: Text(data["feeType"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("FEE TYPE",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.money,
                        color: Colors.green,),
                      title: Text(data["fee"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("FEE",
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
                      title: Text(data["availability"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("AVAILABILITY",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.person,
                        color: Colors.yellow,),
                      title: Text(data["minAgeLimit"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("MIN AGE LIMIT",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.medical_services,
                        color: Colors.blueGrey,),
                      title: Text(data["vaccine"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("VACCINE",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.timeline,
                        color: Colors.blue,),
                      title: Text(data["slots"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("AVAILABLE SLOTS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    ListTile(
                      leading: Icon(Icons.timer,
                        color: Colors.purple,),
                      title: Text("FROM: "+data["from"][index]+" TO: "+data["to"][index],
                          style: TextStyle(
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            color: darkTheme.primaryColor,)
                      ),
                      subtitle: Text("TIMINGS",
                        style: TextStyle(
                            color: darkTheme.primaryColorLight
                        ),),
                    ),
                    Divider(
                      height: 3,
                      thickness: 3,
                    ),
                    Center(
                      child: FlatButton.icon(onPressed: () async {
                        print(data["loc"][index]);
                        await Navigator.pushNamed(context, "/mapDisplay",arguments: {"loc": data["loc"],"name": data["name"][index],"address": data["address"][index],});
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
