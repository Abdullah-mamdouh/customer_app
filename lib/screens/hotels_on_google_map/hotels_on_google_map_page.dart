
import 'package:flutter/material.dart';

import 'widget/hotels_on_google_map_card_widget.dart';
import 'widget/hotels_on_google_map_widget.dart';

class HotelsOnMapPage extends StatefulWidget {
  const HotelsOnMapPage({Key? key}) : super(key: key);
  @override
  State<HotelsOnMapPage> createState() => _HotelsOnMapPageState();
}

class _HotelsOnMapPageState extends State<HotelsOnMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          HotelsOnGoogleMapWidget(),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: SizedBox(
                height: 145,
                width: MediaQuery.of(context).size.width * 0.9,
                child: HotelsOnGoogleMapCardWidget()),
          ),
        ],
      ),
    );
  }
}
