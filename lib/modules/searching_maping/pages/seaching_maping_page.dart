import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nasa_wind_app/helpers/constraints.dart';

class SearchingMapPage extends StatefulWidget {
  const SearchingMapPage({Key? key}) : super(key: key);

  @override
  State<SearchingMapPage> createState() => _SearchingMapPageState();
}

class _SearchingMapPageState extends State<SearchingMapPage> {
  @override
  void didChangeDependencies() {
    Timer(
      Duration(milliseconds: 500),
      () {
        
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQueryHelper.width,
        height: MediaQueryHelper.height,
        child: GoogleMap(
            initialCameraPosition:
                const CameraPosition(target: LatLng(73, 45))),
      ),
    );
  }
}
