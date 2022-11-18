
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelsOnGoogleMapWidget extends StatefulWidget {
  const HotelsOnGoogleMapWidget({Key? key})
      : super(key: key);

  @override
  _HotelsOnGoogleMapWidgetState createState() =>
      _HotelsOnGoogleMapWidgetState();
}

class _HotelsOnGoogleMapWidgetState extends State<HotelsOnGoogleMapWidget> {
  GoogleMapController? mapController; //contrller for Google map
  final Set<Marker> markers = {}; //markers for google map
  static const LatLng showLocation =
      LatLng(27.257896, 33.811607); //location to show in map
  List sites = [[-73.988144,40.743992],[-93.103584,	44.943592],
                [-73.986732,	40.757046],[-74.089859,40.679855],
                [-73.981728,40.575195],[-74.030815,40.737198]];
  getLocations() async {
    getMarkers();
  }

  @override
  void initState() {
    getLocations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(markers.length);
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Multiple Markers in Google Map"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      */
      body: GoogleMap(
        //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: const CameraPosition(
          //innital position in map
          target: showLocation, //initial position
          zoom: 11.0, //initial zoom level
        ),
        markers: getMarkers(), //markers to show on map
        mapType: MapType.normal, //map type
        onMapCreated: (controller) {
          //method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }

  Set<Marker> getMarkers() {
    //final Uint8List markerIcon = await getBytesFromCanvas(200, 100);//markers to place on map
    for (var place in sites) {
      markers.add(Marker(
        //add second marker

        markerId: MarkerId(showLocation.toString()),
        position: LatLng(place[0],
            place[1]), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Pizza Resturante',
          snippet: '50\$',
        ),
        icon: BitmapDescriptor
            .defaultMarker, //fromBytes(markerIcon), //Icon for Marker
      ));
    }
    setState(() {
      // markers.add(Marker( //add first marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: showLocation, //position of marker
      //   infoWindow: InfoWindow( //popup info
      //     title: 'Marker Title First ',
      //     snippet: 'My Custom Subtitle',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
      //
      // markers.add(Marker( //add second marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(30.826014, 28.993614), //position of marker
      //   infoWindow: InfoWindow( //popup info
      //     title: 'Marina El Alameen ',
      //     snippet: 'Matrouh',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
      //
      // markers.add(Marker( //add third marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(27.7137735, 85.315626), //position of marker
      //   infoWindow: InfoWindow( //popup info
      //     title: 'Marker Title Third ',
      //     snippet: 'My Custom Subtitle',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
      //
      // //add more markers here
      // markers.add(Marker( //add third marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(30.057581, 31.431177), //position of marker
      //   infoWindow: InfoWindow( //popup info
      //     title: 'Marker Title Third ',
      //     snippet: 'My Custom Subtitle',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
      //
      // markers.add(Marker( //add third marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(25.066668, 34.900002), //position of marker
      //   infoWindow: InfoWindow( //popup info
      //     title: 'Marsa Alam ',
      //     snippet: 'Red Sea',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
    });

    return markers;
  }

  Future<BitmapDescriptor> createCustomMarkerBitmap(String title) async {
    TextSpan span = TextSpan(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
      ),
      text: title,
    );

    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.text = TextSpan(
      text: title,
      style: TextStyle(
        fontSize: 35.0,
        color: Theme.of(context).colorScheme.secondary,
        letterSpacing: 1.0,
      ),
    );

    PictureRecorder recorder = PictureRecorder();
    Canvas c = Canvas(recorder);

    tp.layout();
    tp.paint(c, const Offset(20.0, 10.0));

    /* Do your painting of the custom icon here, including drawing text, shapes, etc. */

    Picture p = recorder.endRecording();
    ByteData? pngBytes =
        await (await p.toImage(tp.width.toInt() + 40, tp.height.toInt() + 20))
            .toByteData(format: ImageByteFormat.png);

    Uint8List data = Uint8List.view(pngBytes!.buffer);

    return BitmapDescriptor.fromBytes(data);
  }

  Future<Uint8List> getBytesFromCanvas(int width, int height) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint = Paint()..color = Colors.blue;
    const Radius radius = Radius.circular(30.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromLTWH(0.0, 0.0, width.toDouble(), height.toDouble()),
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        ),
        paint);
    TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
    painter.text = const TextSpan(
      text: '200',
      style: TextStyle(fontSize: 25.0, color: Colors.white),
    );
    painter.layout();
    painter.paint(
        canvas,
        Offset((width * 0.5) - painter.width * 0.5,
            (height * 0.5) - painter.height * 0.5));
    final img = await pictureRecorder.endRecording().toImage(width, height);
    final data = await img.toByteData(format: ImageByteFormat.png);
    return data!.buffer.asUint8List();
  }
}
