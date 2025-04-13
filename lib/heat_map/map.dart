import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapZoomExample extends StatefulWidget {
  @override
  _MapZoomExampleState createState() => _MapZoomExampleState();
}

class _MapZoomExampleState extends State<MapZoomExample> {
  final Size imageSize = Size(500, 400); // Large map
  final LatLng topLeft = LatLng(40.0, 57.5);
  final LatLng bottomRight = LatLng(0.0, 0.0);

  Offset? tapPosition;
  LatLng? tappedLatLng;

  LatLng pixelToLatLng(Offset pixel) {
    double lat =
        topLeft.latitude +
        (bottomRight.latitude - topLeft.latitude) *
            (pixel.dy / imageSize.height);
    double lng =
        topLeft.longitude +
        (bottomRight.longitude - topLeft.longitude) *
            (pixel.dx / imageSize.width);
    return LatLng(lat, lng);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text(
            tappedLatLng != null
                ? 'Tapped Coordinates: ${tappedLatLng.toString()}'
                : 'Tap on the map to get coordinates',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 40),
          Container(
            width: 450.w,
            height: 400.h,
            color: Colors.grey[300],
            child: InteractiveViewer(
              constrained: true,
              boundaryMargin: EdgeInsets.all(500),
              minScale: 1.0,
              maxScale: 5.0,
              child: GestureDetector(
                onTapDown: (details) {
                  setState(() {
                    tapPosition = details.localPosition;
                    tappedLatLng = pixelToLatLng(details.localPosition);
                  });
                },
                child: Stack(
                  children: [
                    // Base map image
                    Positioned.fill(
                      child: Image.asset(
                        'assets/map/placement.PNG',
                        fit: BoxFit.fill,
                      ),
                    ),

                    // Markers
                    Positioned(
                      top: 75,
                      right: 160,
                      child: Image.asset(
                        'assets/map/sanpablo.PNG',
                        width: 130.w,
                        height: 130.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 95,
                      right: 180,
                      child: Image.asset(
                        'assets/map/tiaong.png',
                        width: 100.w,
                        height: 100.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 75,
                      right: 155,
                      child: Transform.rotate(
                        angle: -0.35,
                        child: Image.asset(
                          'assets/map/rizal.png',
                          width: 45.w,
                          height: 85.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 165,
                      right: 187,
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Image.asset(
                          'assets/map/dolores.png',
                          width: 40.w,
                          height: 40.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 175,
                      left: 165,
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Image.asset(
                          'assets/map/alaminos.png',
                          width: 60.w,
                          height: 70.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 145,
                      child: Transform.rotate(
                        angle: -0.3,
                        child: Image.asset(
                          'assets/map/nagcarlan.png',
                          width: 75.w,
                          height: 135.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 188,
                      child: Transform.rotate(
                        angle: 0.25,
                        child: Image.asset(
                          'assets/map/calauan.png',
                          width: 75.w,
                          height: 135.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 120,
                      left: 100,
                      child: Transform.rotate(
                        angle: 0.1,
                        child: Image.asset(
                          'assets/map/lipa.png',
                          width: 100.w,
                          height: 100.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    if (tapPosition != null)
                      Positioned(
                        left: tapPosition!.dx - 5,
                        top: tapPosition!.dy - 5,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// LatLng utility class
class LatLng {
  final double latitude;
  final double longitude;

  LatLng(this.latitude, this.longitude);

  @override
  String toString() =>
      'Lat: ${latitude.toStringAsFixed(5)}, Lng: ${longitude.toStringAsFixed(5)}';
}
