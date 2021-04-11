import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation()async{
    Location location=Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData()async{
    print("first");
    Response response = await get('https://worldtimeapi.org/api/timezone/Africa/Nairobi');
    print("end");
    print(response.body);
  }
  @override
  void initState() {
    getLocation();
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    );
  }
}
