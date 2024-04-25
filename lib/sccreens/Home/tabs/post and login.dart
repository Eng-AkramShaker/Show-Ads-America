

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:for_sale/widgets/buttons/Elevated%20Button.dart';
import 'package:for_sale/widgets/divider.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/coustm texts.dart';

class PostAndLogin extends StatefulWidget {
  const PostAndLogin({Key? key}) : super(key: key);
  static String routeName ="Post an Ad";
  @override
  State<PostAndLogin> createState() =>
      _PostAndLoginState();
}

class _PostAndLoginState extends State<PostAndLogin> {
  String? countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  final List<String> Automotive = [
    'Cars',
    'Classic Cars',
    'Junk Cars',
    'Wanted Cars',
    'Bikes',
    'Water Craft',
    'CMVs',
    'Spare Parts',
    'Automotive Accessories',
    'Automotive Services',
    'Rentals',
    'Food Trucks',
  ];
  final List<String> Property = [
    'For Sale',
    'For Rent',
    'For Exchange',
    'International',
    'Property Service',
  ];
  final List<String> Electronics = [
    'Mobiles',
    'Tablets',
    'Cameras',
    'Video Games',
    'SIM',
    'Audio',
    'Laptop & Compute',
    'Devices & Networking',
    'Smart Watch',
    'Smart TV',
    'Home Appliance',
    'Receiver',
    'Wanted Devices',
    'Electronic Service',
    'Other Electronics',
  ];
  final List<String> Contracting = [
    'Bugs Exterminator',
    'Plumber',
    'Locksmith',
    'Duct Cleaning',
    'AC Services',
    'Painter',
    'Decoration',
    'Gardener',
    'Home Appliance',
    'Elevators',
    'Carpenter',
    'Metalwork',
    'Aluminum',
    'Doors',
    'builders',
    'Ceramic',
    'Glass',
    'Insulated Roof',
    'Electrician',
    'Ventilation Works',
    'Water Tanks',
    'Agricultural Product',
    'Building Materials',
  ];
  final List<String> Services = [
    'Satellite',
    'Pack & Move',
    'Cleaning Services',
    'Hairdresser',
    'parties',
    'tailor',
    'Travel & tourism',
    'Medical Services',
    'Clearing Agent',
    'laundry',
    'food & Catering',
    'Commercial Licenses',
    'Advertisement Services',
    'Transportations',
    'other Services',
  ];
  final List<String> Camping = [
    'Trampoline for Rent',
    'Camping Stuff',
    'Tents',
    'Hunting Equipment',
    'Generators',
    'Picnics',
    'Solar power',
    'Camps For Rent',
    'Coals',
    'Satellite Camping',
    'Barbecue',
  ];
  final List<String> Animals = [
    'Dogs',
    'Cats',
    'Birds',
    'Horses',
    'Sheep',
    'Camel',
    'Animal Equipment',
    'Animal Food',
    'Dogs Services',
    'Horse Services',
    'Sheep Services',
    'Other Animals',
  ];
  final List<String> Family = [
    'Gym & Spa',
    'Men Clothes',
    'Men Shoes',
    'Men care Products',
    'ladies Clothes',
    'Women bags & Shoes',
    'Women Makeup',
    'Women Accessories',
    'Baby Clothes',
    'Children Toys',
    'Baby Products',
    'Family Supplies',
  ];
  final List<String> Gifts = [
    'Messbah',
    'Gemstones',
    'Watches',
    'Wallets',
    'Pens',
    'Perfumes',
    'Sunglasses',
    'Leathers & Bags',
    'Other Gifts',
    'Art & Collectibles',
    'Incense',
  ];
  final List<String> Furniture = [
    'Wanted Furniture',
    'Bedrooms',
    'Living Room',
    'Tables',
    'Dewanyeh',
    'Kitchens',
    'Home Decoration',
    'Home Supplies',
    'Office Furniture',
    'Upholstery',
    'Textiles',
  ];
  final List<String> Jobs = [
    'Job Openings',
    'Job Seeker',
    'Languages',
    'All Science',
    'Math Teaching',
    'other Subjects',
    'University Services',
    'Teaching Services',
  ];
  final List<String> Others = [
    'Ramadan',
    'Currencies',
    'Audio & Musical',
    'School Supplies',
    'Books',
    'wholesale',
    'Stickers',
    'Lost & Found',
    'other',
  ];

  String? selectedCardModel;
  String? selectedMake;
  

  late Map<String, List<String>> dataset = {
    'Automotive': Automotive,
    'Property': Property,
    'Electronics': Electronics,
    'Contracting': Contracting,
    'Services': Services,
    'Camping': Camping,
    'Animals': Animals,
    'Family': Family,
    'Gifts': Gifts,
    'Furniture': Furniture,
    'Jobs': Jobs,
    'Others': Others,
  };

  onCarModelChanged(String? value) {
    //don't change second dropdown if 1st item didn't change
    if (value != selectedCardModel) selectedMake = null;
    setState(() {
      selectedCardModel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              customText(text: "Post An Ad", size: 40,fontweight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              customText(text: "WHAT ARE YOU SELLING?", size: 20,fontweight: FontWeight.bold),
              DropdownButton<String?>(
                  value: selectedCardModel,
                  items: dataset.keys.map((e) {
                    return DropdownMenuItem<String?>(
                      value: e,
                      child: Text('$e'),
                    );
                  }).toList(),
                  onChanged: onCarModelChanged),
              const SizedBox(
                height: 20,
              ),
              DropdownButton<String?>(
                  value: selectedMake,
                  items: (dataset[selectedCardModel] ?? []).map((e) {
                    return DropdownMenuItem<String?>(
                      value: e,
                      child: Text('$e'),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedMake = val!;
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              divider(),
              const SizedBox(
                height: 20,
              ),
              customText(text: "WHERE IS YOUR LISTING?", size: 20,fontweight: FontWeight.bold),
              CSCPicker(
                onCountryChanged: (country){
                  countryValue=country;
                },
                onStateChanged: (state){
                  stateValue=state;
                },
                onCityChanged: (city){
                  cityValue=city;
                },
              ),

              const SizedBox(
                height: 20,
              ),
              divider(),
              const SizedBox(
                height: 20,
              ),
              customText(text: "INFORMATION", size: 20,fontweight: FontWeight.bold),
              const TextField(
                decoration: InputDecoration(labelText: "Title",border: OutlineInputBorder(),),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Price",border: OutlineInputBorder(),hintText: "USD"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
               elevatedButton("Pick Image", _PickImageFromGallary)
              

            ],
          ),
        ),
      ),
    );
  }
  Future _PickImageFromGallary() async{
   await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}