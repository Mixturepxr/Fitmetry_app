import 'package:flutter/services.dart';
import 'package:fitmetry/screen/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
      body: Body(),
      backgroundColor: Color(0xFFF6F7FB),
      ),
    );
  }
}