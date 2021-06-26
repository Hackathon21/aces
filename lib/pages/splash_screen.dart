
import 'package:covid_tracker/constants/country_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../country_data.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupCovidData() async{
    Country instance = new Country();
    await instance.getData(countries[0].name);
    Navigator.pushReplacementNamed(context, "/onboard",arguments: {
      "cases": instance.cases,
      "todayCases": instance.todayCase,
      "deaths": instance.deaths,
      "todayDeaths": instance.todayDeaths,
      "recovered": instance.recovered,
      "todayRecovered": instance.todayRecovered,
      "active": instance.active,
      "flag": instance.flag,
    });
  }
  @override
  void initState(){
    super.initState();
    setupCovidData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child:
        SizedBox(
          width: 250,
          height: 250,
          child: Column(
            children: [
              SpinKitRipple(
                color: Colors.white,
                size:50.0,
                duration: Duration(seconds: 3),
              ),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text("COVID TRACKER",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
