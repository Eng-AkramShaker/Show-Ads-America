

import 'package:flutter/material.dart';
import 'package:for_sale/sccreens/Home/tabs/adds%20details.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';

Widget searchBarPics({required context,required height,required width,required img,required catText,required desText,price,hours}){
  return Container(
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.all(9),

    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(color: Colors.black12)
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, AddsDetails.routeName);
        },
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(img,height: height*0.2,width: width*0.4,),
            Text(catText, style:
            const TextStyle(fontWeight: FontWeight.w200, fontSize: 20),),
            Text(desText, style:
            const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customText(text: price ??"", size: 10,color: Colors.blue),
                const SizedBox(
                  width: 10,
                ),
                customText(text: hours ?? "", size: 10,),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}