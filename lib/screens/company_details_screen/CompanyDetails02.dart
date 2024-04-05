import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails03.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails02 extends StatefulWidget {
  const CompanyDetails02({super.key});

  @override
  State<CompanyDetails02> createState() => _CompanyDetails02State();
}

class _CompanyDetails02State extends State<CompanyDetails02> {
  final List<String> countryList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? countrySelectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Text("02", style: TextStyle(
                    fontSize: 50,
                    color: Color(0xFF5574ff)
                ),),
                Text("/06", style: TextStyle(
                    color: Colors.grey
                ),),
                SizedBox(width: 40,),
                Text("COMPANY CONTACTS",style: TextStyle(
                    color: Colors.grey
                ))
              ],
            ),

            Flexible(
              child: Text("What is your business or digital cooperative contact details?",  style: TextStyle(
                fontSize: 30,
              ),
                softWrap: true,),
            ),

            DropdownButtonFormField2<String>(
              isExpanded: true,

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                const EdgeInsets.symmetric(vertical: 16),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                // Add more decoration..
              ),
              hint: const Text(
                'Country/Territory',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              items: countryList
                  .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                  ),
                ),
              ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select your Country/Territory';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when selected item ish changed.
              },
              onSaved: (value) {
                countrySelectedValue = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'Business Address',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'Apartment/Suite/Floor',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'City',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'State / Province / Region',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),





            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'Zip / Postal Code',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),

            SizedBox(height: 20,),
            Text('Phone Number (with country code)', style: TextStyle(
              color: Colors.grey,
              fontSize: 12
            ),),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: '+1 (000) 000 - 0000',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),


            SizedBox(height: 25,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetails03()));
            }, child: Text("Next", style: TextStyle(color: Colors.white),),style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF5574ff)), // Set background color
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set border radius
                  // side: BorderSide(color: Colors.red), // Set border color
                ),
              ),
            ),),

          ],
        ),

    ));
  }
}
