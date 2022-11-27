

import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class PizzaTypesWidget extends StatefulWidget {
  const PizzaTypesWidget({Key? key}) : super(key: key);

  @override
  State<PizzaTypesWidget> createState() => _PizzaTypesWidgetState();
}

class _PizzaTypesWidgetState extends State<PizzaTypesWidget> {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Margerita Pizza',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 2,
                            ),
                            Text('San marzana fresh mazz',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: AppColor.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$29.00',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                OutlinedButton(onPressed: (){},
                                    child: Row(
                                      children: [
                                        Icon(Icons.add,size: 15,),
                                        Text('ADD', style: TextStyle(color: AppColor.orange,fontSize: 16,fontWeight: FontWeight.w500))
                                      ],
                                ),),
                              ],
                            )
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
          height: 5,
        ),
        itemCount: 4);
  }
}
