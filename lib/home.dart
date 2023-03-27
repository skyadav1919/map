import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   LatLng currentLocation = LatLng(26.8467, 80.9462);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('map location'),
      centerTitle: true,),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: currentLocation,
          zoom: 12.0,
      ),
      ),
    );
  }
}
