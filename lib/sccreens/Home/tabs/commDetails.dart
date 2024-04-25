import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:for_sale/widgets/buttons/Elevated%20Button.dart';
import 'package:for_sale/widgets/buttons/Text_button.dart';
import 'package:for_sale/widgets/coustm%20texts.dart';
import 'package:for_sale/widgets/divider.dart';

import '../../../widgets/Cmmercials pics.dart';


class CommDetails extends StatelessWidget {
  const CommDetails({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    int count = 6;
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //this row for icon buttons and the headline
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.cancel_outlined,color: Colors.white,)),
                customText(text: "Commercial Add Details", size: 20,color: Colors.white),
                const Icon(Icons.file_download_outlined,color: Colors.white,),
                const Icon(FontAwesomeIcons.mailForward,color: Colors.white,),
              ],
            ),
            //our img we take it from commercial page
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(image),
            ),
            //how many persons see it
            Row(

              children: [
                Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
                const SizedBox(width: 10,),
                customText(text: "2020Views", size: 15,color: Colors.white),
              ],
            ),
            //whatsapp and call now buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                elevatedButton("call now", (){},backgroundColor: Colors.blue,textColor: Colors.white),
                elevatedButton("WhatsApp", (){},backgroundColor: Colors.green,textColor: Colors.white),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(text: "More Commercial Adds", size: 20,color: Colors.white,fontweight: FontWeight.bold),
                textButton("check All", (){
                  Navigator.pop(context);
                },textColor: Colors.blue),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: count * height / 6,
                width: double.infinity,
                child: FlexibleGridView(
                  physics: const NeverScrollableScrollPhysics(),

                  // axisCount: GridLayoutEnum.threeElementsInRow,
                  // crossAxisSpacing: 5,
                  // mainAxisSpacing: 5,
                  children: List.generate(
                    count,
                        (index) => InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: SizedBox(
                            height: 250,
                            width: 220,
                            child: commercialPics(double.infinity, double.infinity,
                                "https://people.com/thmb/fsmp8lHFoKX5FH9JFffcHnE4Qzo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(539x0:541x2)/Popping-Bubbles-1-793efa18dea14eee899ce57412679d2a.jpg",context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
