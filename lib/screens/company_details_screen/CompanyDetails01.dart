import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails02.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails01 extends StatefulWidget {
  const CompanyDetails01({super.key});

  @override
  State<CompanyDetails01> createState() => _CompanyDetails01State();
}

class _CompanyDetails01State extends State<CompanyDetails01> {

  bool isChecked = false;
  final List<String> companyTypesList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  final List<String> industryList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? companyTypesSelectedValue;
  String? industrySelectedValue;
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
                Text("01", style: TextStyle(
                  fontSize: 50,
                  color: Color(0xFF5574ff)
                ),),
                Text("/06", style: TextStyle(
                  color: Colors.grey
                ),),
                SizedBox(width: 40,),
                Text("COMPANY INFO",style: TextStyle(
                    color: Colors.grey
                ))
              ],
            ),

            Flexible(
              child: Text("Tell us about your\nCompany",  style: TextStyle(
                fontSize: 30,
              ),
              softWrap: true,),
            ),

            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintText: 'Company Name, e.g. Amazon or Apple',
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
                hintText: 'Company Website (Optional)',
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
                hintText: 'Legal Business Name',
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
                hintText: 'Employer Identificaiton Number',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),

            SizedBox(height: 5,),

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
                'Select Your Company Type',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              items: companyTypesList
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
                  return 'Please select your company type.';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when selected item ish changed.
              },
              onSaved: (value) {
                companyTypesSelectedValue = value.toString();
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

            SizedBox(height: 5,),

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
                'Select Your Industry',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              items: industryList
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
                  return 'Please select your company type.';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when selected item ish changed.
              },
              onSaved: (value) {
                industrySelectedValue = value.toString();
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
            Text("Describe your business in 280 characters or less", style: TextStyle(
              color: Colors.grey,
            ),),
            SizedBox(height: 5,),
            TextField(
              maxLines: 3, // Set the maximum number of lines
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: 'Describe your business in 280 characters or less',
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                contentPadding: EdgeInsets.all(5),// Placeholder text
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
                ), // Border decoration
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
                hintText: 'Major Invertors (Optional)',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),

            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey, // Color to fill the checkbox when unchecked
              ),
              child: Row(
                children: [
                  Checkbox(
                    visualDensity: VisualDensity.compact,
                    value: isChecked,
                    checkColor: Colors.green,
                    activeColor: Colors.white,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                  ),
                  
                  Text("My company is involved in cryptocurrency", style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetails02()));
            }, child: Text("Next", style: TextStyle(color: Colors.white),),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF5574ff)), // Set background color
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Set border radius
          // side: BorderSide(color: Colors.red), // Set border color
        ),
      ),
    ),)
          ],
        ),
      ),
    );
  }
}
