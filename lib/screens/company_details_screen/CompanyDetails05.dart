import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails06.dart';
import 'package:title_chain/widgets/MyAppBar.dart';


class CompanyDetails05 extends StatefulWidget {
  const CompanyDetails05({super.key});

  @override
  State<CompanyDetails05> createState() => _CompanyDetails05State();
}

class _CompanyDetails05State extends State<CompanyDetails05> {
  final List<String> companyFormationDocumentTypeList = [
    "I'm a founder",
    "I'm a CFO",
    "I'm and investor",
    "I'm board member of a digital cooperative",
    "I'm a legal power of attorney",
    "I'm a sole proprietor business",
    "I do something else"
  ];

  String? companyFormationDocumentTypeSelectedValue;

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
                    "05",
                    style: TextStyle(fontSize: 50, color: Color(0xFF5574ff)),
                  ),
                  Text(
                    "/06",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text("FORMATION DOCUMENTS",
                      style: TextStyle(color: Colors.grey))
                ],
              ),
              Container(
                child: Text(
                  "Upload Company\nFormation Doc",
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
                        SizedBox(height: 20,),
                        Text("We are looking for the document you were issued when your company was formed in the US.", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),

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
                            'Company Formation Document Type',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          items: companyFormationDocumentTypeList
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
                              return 'Please select your Company Formation Document Type';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item ish changed.
                          },
                          onSaved: (value) {
                            companyFormationDocumentTypeSelectedValue = value.toString();
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

                        SizedBox(height: 30,),

                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffecf0ff),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey, // Color of the border
                              width: 1,           // Thickness of the border, // Style of the border
                            ),),
                          child: Row(
                            children: [
                              Icon(Icons.upload_file),
                              Text("Drag and drop here or click to upload\n(PDF/JPG/PNG)")
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("E.g. Articles of Incorporation / Orgainzation, Certificate of Formation", style: TextStyle(color: Colors.grey, fontSize: 12),),

                        SizedBox(height: 100,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CompanyDetails06()));
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
        )
    );
  }
}
