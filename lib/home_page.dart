import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/services/weather_api_client.dart';
import 'package:weatherapp/views/additional_information.dart';
import 'package:weatherapp/views/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    client.getCurrentWeather("Karachi");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "26.3", "Georgia"),
          SizedBox(
            height: 60.0,
          ),
          Text(
            "Additional Information",
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xdd212121),
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          additionalInformation("24", "2", "1014", "24.6")
        ],
      ),
    );
  }
}
