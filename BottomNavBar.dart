import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFF292B37),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 35,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "categoryPage");
              },
              child: Icon(
                Icons.category_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
      );
  }
}