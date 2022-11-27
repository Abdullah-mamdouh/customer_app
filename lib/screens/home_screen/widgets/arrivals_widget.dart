
import 'package:flutter/material.dart';

import '../../../utils/helper.dart';

class ArrivalsWidget extends StatefulWidget {
  const ArrivalsWidget({Key? key}) : super(key: key);

  @override
  State<ArrivalsWidget> createState() => _ArrivalsWidgetState();
}

class _ArrivalsWidgetState extends State<ArrivalsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          //final hotel = hotelsList[index];
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/images/real/western.png'),
              )
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: 10);
  }
}
