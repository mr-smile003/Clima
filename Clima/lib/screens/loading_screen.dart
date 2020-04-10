import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import './location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apikey = '65afe7195e2deaaa0438b0079b9e4789';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

void initState(){
  super.initState();
  getLocation();
  print('that is intiative');

}
double latitude;
double longitude;




void getLocation() async{

  Location location = Location();
  await location.getcurrentLocation();
  latitude = location.latitude;
  longitude = location.lungitude;
  Networkinghelp networkinghelp = Networkinghelp(url: 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apikey&units=metric');
  
  var weatherdata =  await networkinghelp.getData();

  Navigator.push(context, MaterialPageRoute(builder: (context){
    return LocationScreen(locationWeather: weatherdata,);
  }));
  
}

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(
      body: SpinKitCircle(
        color: Colors.white,
        size: 100.0,
        duration: Duration(milliseconds: 4800),
      ),
    );
  }
}