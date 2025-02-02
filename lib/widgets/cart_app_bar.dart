import "package:flutter/material.dart";

class CartAppBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFFF55151),
            ),
          )
        ],
      ),
    );
  }
}