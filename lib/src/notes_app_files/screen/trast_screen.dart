import 'package:flutter/material.dart';

class TrastScreen extends StatefulWidget {
  const TrastScreen({super.key});

  @override
  State<TrastScreen> createState() => _TrastScreenState();
}

class _TrastScreenState extends State<TrastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Delete Screen"),),);
  }
}


