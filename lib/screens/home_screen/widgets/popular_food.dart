
import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({Key? key}) : super(key: key);

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //final hotel = hotelsList[index];
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
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
                      borderRadius: BorderRadius.circular(12),

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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Classic Burger',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 5,
                              ),
                              Text('Hungry PUppets',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                              const SizedBox(
                                height: 8,
                              ),
                              Text('\$29.00',
                                  style: TextStyle(
                                      color: AppColor.orange,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
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
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 4);
  }
}
