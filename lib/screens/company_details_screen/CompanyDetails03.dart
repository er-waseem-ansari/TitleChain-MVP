import 'dart:ffi';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails04.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails03 extends StatefulWidget {
  const CompanyDetails03({super.key});

  @override
  State<CompanyDetails03> createState() => _CompanyDetails03State();
}

class _CompanyDetails03State extends State<CompanyDetails03> {
  final List<String> residentStatusList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? residentStatusSelectedValue;

  final List<String> formOfIdList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? formOfIdSelectedValue;

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
        body: Container(
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "03",
                    style: TextStyle(fontSize: 50, color: Color(0xFF5574ff)),
                  ),
                  Text(
                    "/06",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text("OWNERS\' PROFILES",
                      style: TextStyle(color: Colors.grey))
                ],
              ),
              Container(
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  softWrap: true,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                                    "Citizenship Status",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                        DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Select citizenship status',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          items: residentStatusList
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your citizenship status';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item ish changed.
                          },
                          onSaved: (value) {
                            residentStatusSelectedValue = value.toString();
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
                
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Date of Birth",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintText: 'MM/DD/YYYY',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Phone Number(with country code)",
                          style: TextStyle(color: Colors.grey),
                        ),
                        DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Form of ID',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          items: formOfIdList
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your form of ID';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item ish changed.
                          },
                          onSaved: (value) {
                            formOfIdSelectedValue = value.toString();
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
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Identification",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                        DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Form of ID',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          items: formOfIdList
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your form of ID';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item ish changed.
                          },
                          onSaved: (value) {
                            formOfIdSelectedValue = value.toString();
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

                        SizedBox(height: 15,),

                        Text(
                          "Home Address",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                        DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Country',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          items: countryList
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your country';
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

                        SizedBox(height: 15,),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintText: 'Address',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                
                        SizedBox(height: 15,),
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
                        SizedBox(
                          height: 10,
                        ),
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
                        SizedBox(
                          height: 10,
                        ),
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
                        SizedBox(
                          height: 10,
                        ),
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
                        SizedBox(
                          height: 20,
                        ),


                        Text("Political Exposure", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            Expanded(child: Text("Have you or any persons associated with you ever held a political office in a foreign country?", style: TextStyle(color: Colors.grey),)),
                            Column(
                              children: [
                                Radio(value: "Yes", groupValue: true, onChanged: null),
                                Text("Yes", style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            Column(
                              children: [
                                Radio(value: "Yes", groupValue: true, onChanged: null),
                                Text("No", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CompanyDetails04()));
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF5574ff)), // Set background color
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(10.0), // Set border radius
                                // side: BorderSide(color: Colors.red), // Set border color
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
