import 'package:flutter/material.dart';

Widget searchBarPics(height,width,img,catText,desText){
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(9),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(color: Colors.black12)
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: InkWell(
        onTap: (){},
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(img,height: height*0.2,width: width*0.4,),
            Text(catText, style:
            TextStyle(fontWeight: FontWeight.w200, fontSize: 20),),
            Text(desText, style:
            TextStyle(fontWeight: FontWeight.w300, fontSize: 20),),
          ],
        ),
      ),
    ),
  );
}