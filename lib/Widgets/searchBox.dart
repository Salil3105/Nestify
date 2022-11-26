import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: EdgeInsets.fromLTRB(35, 15, 35, 15),
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35.0),
          // border: Border.all(
          //   // color: Color.fromARGB(255, 72, 187, 240),
          //   width: 0.1,
          // ),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            border: InputBorder.none,
            hintText: "Search here...",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}