import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Trekking extends StatefulWidget {
  String value;
  Trekking({Key key, @required this.value}) : super(key: key);
  @override
  _TrekkingState createState() => _TrekkingState();
}

class _TrekkingState extends State<Trekking> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(28.263610, 83.972390);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
