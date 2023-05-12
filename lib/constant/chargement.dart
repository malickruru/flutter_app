import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Chargement extends StatefulWidget {
  const Chargement({super.key});

  @override
  State<Chargement> createState() => _ChargementState();
}

class _ChargementState extends State<Chargement> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding:const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 100,
      ),
      child: Column(
        children: <Widget>[
        Image.asset("image.png",height: 250,width: 250,),
        const SizedBox(
            height: 10,
          ),
          const SpinKitPumpingHeart( color: Colors.amber,size: 75)
      ]),),
    );
  }
}