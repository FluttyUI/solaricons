import 'package:flutty_solar_icons/solar_icons_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('FluttySolarIcons Example')),
        body: const Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              SolarIcon(
                SolarIcons.Person,
                weight: SolarIconWeight.linear,
                color: Colors.blue,
                size: 36,
              ),
              SolarIcon(
                SolarIcons.Leaf,
                weight: SolarIconWeight.boldDuotone,
                color: Color(0xFF1E293B),
                secondaryColor: Color(0xFFFB7185),
                tertiaryColor: Color(0xFF34D399),
                quaternaryColor: Color(0xFFF59E0B),
                size: 36,
              ),
              SolarIcon(
                SolarIcons.Satellite,
                weight: SolarIconWeight.lineDuotone,
                color: Color(0xFF1E293B),
                secondaryColor: Color(0xFF9CA3AF),
                size: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
