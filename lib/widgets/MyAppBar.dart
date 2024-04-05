import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              Text(
                'Pamela',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ), // Replace with another widget for the right side if needed
          onPressed: () {
            // Add your functionality here
          },
        ),
      ],
    );
  }
}
