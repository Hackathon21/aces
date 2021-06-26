
import 'package:covid_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map data = {};
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(index==0){
      Navigator.pushNamed(context, "/home",arguments: data);
    }
    if(index==1){
      Navigator.pushNamed(context,"/vaccineLogin");
    }
    if(index==2){
      Navigator.pushNamed(context, "/hospitalPlace");
    }
  }
  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
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
      body: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 32,),
              )
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.coronavirus),
            label: 'Cases',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Vaccines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.single_bed),
            label: 'Hospital',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: darkTheme.accentColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
