import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    // print(response);
    // print(response.body);
    //print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      //print(data);coord.lon
      // var longitude = jsonDecode(data)['coord']['lon'];
      // print(longitude);
      //weather[0].description
      // var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      // print(weatherDescription);
      // main.temp
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
