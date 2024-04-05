import 'package:flutter/material.dart';
import 'package:title_chain/widgets/MyAppBar.dart';

class CompanyDetails06 extends StatefulWidget {
  const CompanyDetails06({super.key});

  @override
  State<CompanyDetails06> createState() => _CompanyDetails06State();
}

class _CompanyDetails06State extends State<CompanyDetails06> {
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
                    "06",
                    style: TextStyle(fontSize: 50, color: Color(0xFF5574ff)),
                  ),
                  Text(
                    "/06",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text("EIN VERIFICATION",
                      style: TextStyle(color: Colors.grey))
                ],
              ),
              Container(
                child: Text(
                  "Upload EIN\nVerification Letter",
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
                        Text("We\'ll accept these IRS documents: Form CP 575, a 147c letter, an IRS-returned SS-4, or a screenshot of the IRS website with your EIN in it.", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),

                        Container(
                          height: 50,
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
                              Text("Upload")
                            ],
                          ),
                        ),

                        SizedBox(height: 100,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CompanyDetails06()));
                          },
                          child: Text(
                            "Submit",
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
