import 'package:flutter/material.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails05.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails04 extends StatefulWidget {
  const CompanyDetails04({super.key});

  @override
  State<CompanyDetails04> createState() => _CompanyDetails04State();
}

class _CompanyDetails04State extends State<CompanyDetails04> {
  int? _politicalRelatedGroup = 1;
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
                  "04",
                  style: TextStyle(fontSize: 50, color: Color(0xFF5574ff)),
                ),
                Text(
                  "/06",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 40,
                ),
                Text("BUSINESS NAMES",
                    style: TextStyle(color: Colors.grey))
              ],
            ),
            Container(
              child: Text(
                "Business Names",
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
                      Text("Does your company have a DBA (Doing Business As) or an official name change?", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: _politicalRelatedGroup == 1? Color(0xffecf0ff) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 1, groupValue: _politicalRelatedGroup, onChanged: (value){
                              setState(() {
                                _politicalRelatedGroup = value;
                              });
                            }),
                            Text("Yes")
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: _politicalRelatedGroup == 2? Color(0xffecf0ff) : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 2, groupValue: _politicalRelatedGroup, onChanged: (value){
                              setState(() {
                                _politicalRelatedGroup = value;
                              });
                            }),
                            Text("No")
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Please attach your DBA (Doing Business As) and/or Trade Name documents(s).", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20,),

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

                      SizedBox(height: 100,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompanyDetails05()));
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
