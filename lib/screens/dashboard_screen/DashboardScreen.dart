import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:title_chain/screens/company_details_screen/CompanyDetails00.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF5574ff),
        title: Row(
          children: [
            CircleAvatar(
              // backgroundColor: Colors.white,
              radius: 24.0,
              child: ClipOval(
                child: Image.asset(
                  'assets/temp/pic.jpg', // Path to your image asset
                  fit: BoxFit.cover,
                  width: 60.0,
                  height: 60.0,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello,', style: TextStyle(fontSize: 17, color: Colors.white),),
                Text('Pamela', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
              ],
            ),
          ],
        ),

        // backgroundColor: Colors.purple, // Customize the app bar color if needed
        // leading:Container(),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: CircleAvatar(
        //     // backgroundColor: Colors.white,
        //     radius: 16.0,
        //     child: ClipOval(
        //       child: Image.asset(
        //         'assets/temp/pic.jpg', // Path to your image asset
        //         fit: BoxFit.cover,
        //         width: 55.0,
        //         height: 55.0,
        //       ),
        //     ),
        //   ),
        // ),
        actions: [

          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white,), // Replace with another widget for the right side if needed
            onPressed: () {
              // Add your functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 235,
            decoration: BoxDecoration(
              color: Color(0xFF5574ff),

            ),
            child: Container(
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TitleChain your business -\n Click to register your account now", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white
                  ),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(
                        height: 140,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.add, size: 50, color: Colors.grey,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have no businesses, create your first business!"),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetails00()));
                }, child: Text("Create Business", style: TextStyle(color: Colors.white),),style: ButtonStyle(
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
          )
        ],
      ),
    );
  }
}
