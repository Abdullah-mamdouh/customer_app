import 'dart:math';

import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class HotelsOnGoogleMapCardWidget extends StatefulWidget {
  HotelsOnGoogleMapCardWidget({Key? key})
      : super(key: key);
  @override
  State<HotelsOnGoogleMapCardWidget> createState() =>
      _HotelsOnGoogleMapCardWidgetState();
}

class _HotelsOnGoogleMapCardWidgetState
    extends State<HotelsOnGoogleMapCardWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.85,
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    //height: 100,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEToqDOfAtJqlcLhymiSOe6TQjz7wQLWHNq3gUcP79eg&s'
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        //color: AppColors.cardColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Brazilian Steak House',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColor.orange,
                                size: 18,
                              ),
                              const SizedBox(width: 5,),
                              Text(
                                '5.0 (8)',
                                style: TextStyle(
                                    color: AppColor.secondary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColor.secondary,
                                size: 20,
                              ),
                              const SizedBox(width: 10,),
                              Text('90 Parker St.Moxico',
                                  style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: 5);
  }
}
