import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather Forecast",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          color: Colors.cyan,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const SearchInput(),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const CityDatail(),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const TemperatureDatail(),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const ExtraWeatherDetail(),
              ),
              Text(
                '7-day weather forecast'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 120, // Устанавливаем явную высоту
                child: BottomDetail(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Enter City Name',
        border: InputBorder.none,
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}

class CityDatail extends StatelessWidget {
  const CityDatail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Murmansk Obl, Ru',
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}

class TemperatureDatail extends StatelessWidget {
  const TemperatureDatail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 30,
      children: [
        Icon(
          Icons.sunny,
          size: 100,
          color: Colors.white,
        ),
        Column(children: [
          Text(
            '14 F',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ])
      ],
    );
  }
}

class ExtraWeatherDetail extends StatelessWidget {
  const ExtraWeatherDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 50,
      children: [
        Column(
          children: [
            Icon(Icons.ac_unit, color: Colors.white, size: 40),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              'km/h',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.ac_unit, color: Colors.white, size: 40),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              'km/h',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.ac_unit, color: Colors.white, size: 40),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              'km/h',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}

class BottomDetail extends StatelessWidget {
  const BottomDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 100,
      children: const [
        DayWeather(
          day: 'Friday',
          temperature: '6°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Saturday',
          temperature: '5°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Sunday',
          temperature: '22°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Friday',
          temperature: '6°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Saturday',
          temperature: '5°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Sunday',
          temperature: '22°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Friday',
          temperature: '6°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Saturday',
          temperature: '5°F',
          icon: Icons.sunny,
        ),
        DayWeather(
          day: 'Sunday',
          temperature: '22°F',
          icon: Icons.sunny,
        ),
      ],
    );
  }
}

class DayWeather extends StatelessWidget {
  final String day;
  final String temperature;
  final IconData icon;

  const DayWeather({
    required this.day,
    required this.temperature,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: const Color.fromARGB(255, 0, 114, 129),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              day,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  temperature,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
