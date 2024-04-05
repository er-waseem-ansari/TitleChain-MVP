import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:title_chain/main.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails01.dart';
import 'package:title_chain/utilities/constants.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails00 extends StatefulWidget {
  const CompanyDetails00({super.key});

  @override
  State<CompanyDetails00> createState() => _CompanyDetails00State();
}

class _CompanyDetails00State extends State<CompanyDetails00> {
  final List<String> genderItems = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        width: screenWidth,
        decoration: BoxDecoration(color: Color(0xffecf0ff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tell us more about your business or cooperative',
              style:
                  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Every Title Chain Account Gets a Unique Call Sign secured on-chain. Think of it as a username for your company.\n This call sign won\'t appear on any transactions, statements and is our tokenized identity for business or entity.',
              style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),

            Form(

              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company name",
                    style: GoogleFonts.lato(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15.0),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xffe6e6e6)),
                      //     borderRadius: BorderRadius.circular(10)
                      // ),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText: 'Company Name, e.g. Amazon or Apple',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Callsign",
                    style: GoogleFonts.lato(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15.0),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xffe6e6e6)),
                      //     borderRadius: BorderRadius.circular(10)
                      // ),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText: 'mercury.com/',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Text(
                    "Numbers, letters, and dashes only, please.",
                    style: GoogleFonts.lato(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Your Role",
                    style: GoogleFonts.lato(),
                  ),
                  SizedBox(height: 5,),
                  DropdownButtonFormField2<String>(
                    isExpanded: true,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                      // the menu padding when button's width is not specified.
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      ),
                      // Add more decoration..
                    ),
                    hint: const Text(
                      'Select Your Role',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    items: genderItems
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
                        return 'Please select your role.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //Do something when selected item ish changed.
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
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
                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CompanyDetails01()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5574ff),// Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: const Text('Next', style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "I acknowledge that I am legally authorized to enter into this agreement on behalf of the company\'s behalf.",
                    style: GoogleFonts.lato(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
