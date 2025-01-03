import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppIcons.dart';
import 'package:my_app/Configuration/AppString.dart';
import 'package:my_app/components/Toolbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: Toolbar(Title: AppStrings.nearby),
      body: FlutterMap(options: MapOptions(
        initialCenter: LatLng(24.8607, 67.0011),initialZoom: 9.2
      ), 
      children: [
        TileLayer( 
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', 
        userAgentPackageName: 'com.example.app',
        maxNativeZoom: 19, 
      ),
      MarkerLayer(markers: [Marker(
        height: 100,
        width: 100,
        point: LatLng(24.9431, 67.1476) , child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            child: Text('Abdullah'),
          ),
          SvgPicture.asset(AppIcons.icLocation,colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),)
        ],
      ))])
      ],)
    );
  }
}