import 'package:clima_app/services/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super
        .initState(); // initState method gets called only once when the stful widget is created
    getLocationData();
  }

  // double? latitude;
  // double? longitude;
  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationScreen(
          locationWeather: weatherData,
        ),
      ),
    );
    // print(temp);
    // print(id);
    // print(city);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Clima App'),
      //   centerTitle: true,
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       getLocationData();
      //     },
      //     child: const Text('Get Location'),
      //   ),
      // ),
      body: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
