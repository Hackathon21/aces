
import 'package:covid_tracker/constants/state_url.dart';
import 'package:covid_tracker/constants/states.dart';
import 'package:flutter/material.dart';

import '../hospital_data.dart';

class PlacesHospital extends StatefulWidget {
  @override
  _PlacesHospitalState createState() => _PlacesHospitalState();
}

class _PlacesHospitalState extends State<PlacesHospital> {
  void placeHospitalData(String url2, int index) async{
    if(index==0) {
      HospiData instance = new HospiData();
      await instance.getHospitalData(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==1) {
      HospiData instance = new HospiData();
      await instance.getHospitalData1(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==2) {
      HospiData instance = new HospiData();
      await instance.getHospitalData2(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==3) {
      HospiData instance = new HospiData();
      await instance.getHospitalData3(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==4) {
      HospiData instance = new HospiData();
      await instance.getHospitalData4(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==5) {
      HospiData instance = new HospiData();
      await instance.getHospitalData5(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==6) {
      HospiData instance = new HospiData();
      await instance.getHospitalData6(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==7) {
      HospiData instance = new HospiData();
      await instance.getHospitalData7(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==8) {
      HospiData instance = new HospiData();
      await instance.getHospitalData8(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==9) {
      HospiData instance = new HospiData();
      await instance.getHospitalData9(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    if(index==10) {
      HospiData instance = new HospiData();
      await instance.getHospitalData10(url2);
      Navigator.pushNamed(context, "/hospitalDisplay", arguments: {
        "hospName": instance.hospName,
        "address": instance.address,
        "district": instance.district,
        "contact": instance.contact,
        "type": instance.type,
        "total": instance.total,
        "vacant": instance.vacant,
        "covidBedsRegula": instance.covidBedsRegular,
        "covidBedsVacant": instance.covidBedsVacant,
        "covidBedsOxygenTotal": instance.covidBedsOxygenTotal,
        "covidBedsOxygenVacant": instance.covidBedsOxygenVacant,
        "hduBedsRegular": instance.hduBedsRegular,
        "hduBedsVacant": instance.hduBedsVacant,
        "hasIcuBeds": instance.hasIcuBeds,
        "hasVantilators": instance.hasVantilators,
        "isNewHospital": instance.isNewHospital,
        "ccuBedsWithVantilatorTotal": instance.ccuBedsWithVantilatorTotal,
        "ccuBedsWithVantilatorVacant": instance.ccuBedsWithVantilatorVacant,
        "lat": instance.lat,
        "long": instance.lon,
      });
    }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(itemCount: state.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
          child: Card(
            child: ListTile(
              onTap: () {
                print(url3[index].url);
                placeHospitalData(url3[index].url.toString(), index);
              },
              title: Text(state[index].name),
            ),
          ),
        );
      }),
    );
  }
}
