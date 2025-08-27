
import 'package:flutter/material.dart';

class NewPagePage extends StatefulWidget {
  const NewPagePage({super.key});

  @override
  State<NewPagePage> createState() => NewPagePageState();
}

class NewPagePageState extends State<NewPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("See All Page"),
      ),
    );
  }
}