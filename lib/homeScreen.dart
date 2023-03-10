import 'package:flutter/material.dart';
import 'package:untitled2/interface.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "DEVELOPERS",
          style: TextStyle(
            fontFamily: 'Mars',
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ui()
        ],
      ),
    );
  }
}
