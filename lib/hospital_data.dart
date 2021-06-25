import 'dart:convert';

import 'package:http/http.dart';

class HospiData{
  List<String> hospName=[];
  List<String> address=[];
  List<String> district=[];
  List<String> contact=[];
  List<String> type=[];
  List<String> total=[];
  List<String> vacant=[];
  List<String> covidBedsRegular=[];
  List<String> covidBedsVacant=[];
  List<String> covidBedsOxygenTotal=[];
  List<String> covidBedsOxygenVacant=[];
  List<String> hasIcuBeds=[];
  List<String> hasVantilators=[];
  List<String> isNewHospital=[];
  List<String> ccuBedsWithVantilatorTotal=[];



  Future<void> getHospitalData(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["ADDRESS"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["TYPE"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["TOTAL"]).toString());
          vacant.add((value["VACANT"]).toString());
          covidBedsRegular.add((value["COVID_BEDS_REGULAR_TOTAL"]).toString());
          covidBedsVacant.add((value["COVID_BEDS_REGULAR_VACANT"]).toString());
          covidBedsOxygenTotal.add(
              (value["COVID_BEDS_WITH_OXYGEN_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["COVID_BEDS_WITH_OXYGEN_VACANT"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["CCU_BEDS_WITH_VENTILATOR_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());
        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData1(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["STEIN_ID"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["AAROGYASRI_EMPANELMENT_STATUS"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["GENERAL_TOTAL"]).toString());
          vacant.add((value["GENERAL_AVAILABLE"]).toString());
          covidBedsRegular.add((value["ICU_TOTAL"]).toString());
          covidBedsVacant.add((value["ICU_AVAILABLE"]).toString());
          covidBedsOxygenTotal.add(
              (value["OXYGEN_GENERAL_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["OXYGEN_GENERAL_AVAILABLE"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["VENTILATOR"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());
      });
    }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData2(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["FACILITY_NAME"]).toString());
          address.add((value["STEIN_ID"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["FACILITY_TYPE"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["TOTAL_BEDS"]).toString());
          vacant.add((value["VACANT"]).toString());
          covidBedsRegular.add((value["TOTAL_ICU_BEDS"]).toString());
          covidBedsVacant.add((value["ICU_BEDS_VACANT"]).toString());
          covidBedsOxygenTotal.add(
              (value["TOTAL_ICU_BEDS"]).toString());
          covidBedsOxygenVacant.add(
              (value["ICU_BEDS_VACANT"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["CCU_BEDS_WITH_VENTILATOR_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData3(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["STEIN_ID"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["CATEGORY"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["NONOXYGEN_BEDS_TOTAL"]).toString());
          vacant.add((value["NONOXYGEN_BEDS_VACANT"]).toString());
          covidBedsRegular.add((value["ICU_BEDS_TOTAL"]).toString());
          covidBedsVacant.add((value["ICU_BEDS_VACANT"]).toString());
          covidBedsOxygenTotal.add(
              (value["OXYGEN_BEDS_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["OXYGEN_BEDS_VACANT"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["VENTILATORS_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData4(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["STEIN_ID"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["CATEGORY"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["BEDS_TOTAL"]).toString());
          vacant.add((value["BEDS_VACANT"]).toString());
          covidBedsRegular.add((value["ICU_BEDS_TOTAL"]).toString());
          covidBedsVacant.add((value["ICU_BEDS_VACANT"]).toString());
          covidBedsOxygenTotal.add(
              (value["OXYGEN_BEDS_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["OXYGEN_BEDS_VACANT"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["VENTILATORS_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData5(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);
        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["HOSPITAL_ADDRESS"]).toString());
          district.add((value["STEIN_ID"]).toString());
          type.add((value["TYPE"]).toString());
          contact.add((value["HOSPITAL_NUMBER"]).toString());
          total.add((value["NMC_RESERVED_BED_TOTAL"]).toString());
          vacant.add((value["NMC_RESERVED_BED_AVAILABLE"]).toString());
          covidBedsRegular.add((value["ICU_BEDS_TOTAL"]).toString());
          covidBedsVacant.add((value["ICU_BEDS_AVAILABLE"]).toString());
          covidBedsOxygenTotal.add(
              (value["BEDS_WITH_OXYGEN_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["BEDS_WITH_OXYGEN_AVAILABLE"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["VENTILATOR_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData6(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["HOSPITAL_ADDRESS"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add((value["HOSPITAL_CATEGORY"]).toString());
          contact.add((value["CONTACT"]).toString());
          total.add((value["TOTAL_BEDS_ALLOCATED_TO_COVID"]).toString());
          vacant.add((value["AVAILABLE_ICU_BEDS_WITH_VENTILATOR_TOTAL"]).toString());
          covidBedsRegular.add((value["TOTAL_ICU_BEDS_WITHOUT_VENTILATOR"]).toString());
          covidBedsVacant.add((value["AVAILABLE_ICU_BEDS_WITHOUT_VENTILATOR"]).toString());
          covidBedsOxygenTotal.add(
              (value["TOTAL_BEDS_WITH_OXYGEN"]).toString());
          covidBedsOxygenVacant.add(
              (value["AVAILABLE_BEDS_WITH_OXYGEN"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["TOTAL_ICU_BEDS_WITH_VENTILATOR_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData7(String url1) async {
    try {
      Response response = await get(url1);
      if(response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

        data1.forEach((value) {
          hospName.add((value["HOSPITAL_NAME"]).toString());
          address.add((value["DISTRICT"]).toString());
          district.add((value["DISTRICT"]).toString());
          type.add(("UNAVILABLE").toString());
          contact.add((value["HOSPITAL_HELPLINE_NUMBER"]).toString());
          total.add((value["GENERAL_BEDS_TOTAL"]).toString());
          vacant.add((value["GENERAL_BEDS_AVAILABLE"]).toString());
          covidBedsRegular.add((value["ICU_BEDS_TOTAL"]).toString());
          covidBedsVacant.add((value["ICU_BEDS_AVAILABLE"]).toString());
          covidBedsOxygenTotal.add(
              (value["OXYGEN_BEDS_TOTAL"]).toString());
          covidBedsOxygenVacant.add(
              (value["OXYGEN_BEDS_AVAILABLE"]).toString());
          ccuBedsWithVantilatorTotal.add(
              (value["VENTILATOR_BEDS_TOTAL"]).toString());
          hasVantilators.add((value["HAS_VENTILATORS"]).toString());
          hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
          isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


        });
      }
    }
    catch(e){
      print(e);
      hospName.add("COULD NOT FETCH");
    }
  }
  Future<void> getHospitalData8(String url1) async {
    try {
      Response response = await get(url1);
      if (response.statusCode == 200) {
        List data1 = jsonDecode(response.body);

              data1.forEach((value) {
                hospName.add((value["HOSPITAL_NAME"]).toString());
                address.add((value["HOSPITAL_ADDRESS"]).toString());
                district.add((value["STEIN_ID"]).toString());
                type.add((value["HOSPITAL_TYPE"]).toString());
                contact.add((value["HOSPITAL_NUMBER"]).toString());
                total.add((value["TOTAL_BEDS"]).toString());
                vacant.add((value["TOTAL_BEDS_AVAILABLE"]).toString());
                covidBedsRegular.add((value["TOTAL_BEDS"]).toString());
                covidBedsVacant.add((value["TOTAL_WARD_BEDS_AVAILABLE"]).toString());
                covidBedsOxygenTotal.add(
                    (value["TOTAL_OXYGEN_BEDS_AVAILABLE"]).toString());
                covidBedsOxygenVacant.add(
                    ("TOTAL_OXYGEN_BEDS_AVAILABLE").toString());
                ccuBedsWithVantilatorTotal.add(
                    (value["TOTAL_VENTILATOR_BEDS_AVAILABLE"]).toString());
                hasVantilators.add(("TRUE").toString());
                hasIcuBeds.add(("TRUE").toString());
                isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());
              });
            }
          }
          catch (e) {
            print(e);
            hospName.add("COULD NOT FETCH");
          }
        }
        Future<void> getHospitalData9(String url1) async {
          try {
            Response response = await get(url1);
            if (response.statusCode == 200) {
              List data1 = jsonDecode(response.body);

              data1.forEach((value) {
                hospName.add((value["HOSPITAL_NAME"]).toString());
                address.add((value["DISTRICT"]).toString());
                district.add((value["DISTRICT"]).toString());
                type.add((value["TYPE"]).toString());
                contact.add((value["NODAL_OFFICER_NUMBER"]).toString());
                total.add((value["BEDS_WITHOUT_OXYGEN_TOTAL"]).toString());
                vacant.add((value["BEDS_WITHOUT_OXYGEN_AVAILABLE"]).toString());
                covidBedsRegular.add((value["ICU_BEDS_TOTAL"]).toString());
                covidBedsVacant.add((value["ICU_BEDS_AVAILABLE"]).toString());
                covidBedsOxygenTotal.add(
                    (value["BEDS_WITH_OXYGEN_TOTAL"]).toString());
                covidBedsOxygenVacant.add(
                    (value["BEDS_WITH_OXYGEN_AVAILABLE"]).toString());
                ccuBedsWithVantilatorTotal.add(
                    ("UNAVILABLE").toString());
                hasVantilators.add(("TRUE").toString());
                hasIcuBeds.add((value["HAS_ICU_BEDS"]).toString());
                isNewHospital.add((value["IS_NEW_HOSPITAL"]).toString());


              });
            }
          }
          catch (e) {
            print(e);
            hospName.add("COULD NOT FETCH");
          }
        }
      }