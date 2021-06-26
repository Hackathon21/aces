import 'package:covid_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
    print(data["cases"]);
    print(data["todayCase"]);
    print(data["deaths"]);
    print(data["todayDeaths"]);
    print(data["recovered"]);
    print(data["todayRecovered"]);
    print(data["active"]);
    print(data["flag"]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("COV-INFO",
          style: TextStyle(decorationColor: Colors.white,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: WillPopScope(
        onWillPop: (){
          return new Future.value(true);
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(data["flag"]),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton.icon(onPressed: () async {
                  dynamic result=await Navigator.pushNamed(context, "/data");
                  setState(() {
                    data = {
                      "cases": result["cases"],
                      "todayCases": result["todayCases"],
                      "deaths": result["deaths"],
                      "todayDeaths": result["todayDeaths"],
                      "recovered": result["recovered"],
                      "todayRecovered": result["todayRecovered"],
                      "active": result["active"],
                      "flag": result["flag"]
                    };
                  });
                },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.blue[700],
                    ),
                    label: Text(
                      "Edit Location",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                      child:ListTile(
                        title: Text(data["cases"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle: Text("TOTAL CASES",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title:Text(data["todayCases"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle: Text("FRESH CASES",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                      child:ListTile(
                        title: Text(data["deaths"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle: Text("TOTAL DEATHS",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                      child:ListTile(
                        title: Text(data["todayDeaths"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle:Text("DEATHS TODAY",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                        title: Text(data["recovered"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle:Text("TOTAL RECOVERED",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                      child:ListTile(
                        title: Text(data["todayRecovered"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle:Text("RECOVERED TODAY",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                ),
                Divider(
                  height: 3,
                  thickness: 3,
                  color: Colors.blue[900],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                        title: Text(data["active"],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: darkTheme.primaryColor,)
                        ),
                        subtitle: Text("ACTIVE CASES",
                            style: TextStyle(
                              color: darkTheme.primaryColorLight,)
                        ),
                      ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
