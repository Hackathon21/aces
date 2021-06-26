
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
      Navigator.pushNamed(context,"/dashboard");
    }
    if(index==1){
      Navigator.pushNamed(context, "/home",arguments: data);
    }
    if(index==2){
      Navigator.pushNamed(context,"/vaccineLogin");
    }
    if(index==3){
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
        title: Text("COVID TRACKER",
          style: TextStyle(decorationColor: Colors.white,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset("assets/images/cov1.jpg",
                        fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        elevation: 5,
                        margin:EdgeInsets.all(3)
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset("assets/images/cov2.jpg",
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 5,
                          margin:EdgeInsets.all(3)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text("In these tough times as the third wave of covid is about to hit, It will be not easy to rush to the hospitals and for vaccines without knowing the availability of beds,vaccines etc...",style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 2.0,
                color: darkTheme.primaryColor,)),
              SizedBox(height: 10,),
              Text("Therefore we (Shubhankar Pandey and Shubham Saini) have created a covid tracker app to help those who are in need",style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 2.0,
                color: darkTheme.primaryColor,)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        child: Image.asset("assets/images/shubhankar.jpg"),
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        child: Image.asset("assets/images/saini.jpg"),
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: darkTheme.primaryColorLight,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
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
