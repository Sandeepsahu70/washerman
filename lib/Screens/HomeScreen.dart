import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Home")),),
      body: Column(
        children: [

          Center(child: Image.asset("assets/undraw_welcome_cats_thqn.png",height: 400,width: 400,))
        ],
      ),
    );
  }
}
