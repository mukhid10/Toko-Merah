import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/widgets/category_widget.dart';
import 'package:shop/widgets/home_app_bar.dart';
import 'package:shop/widgets/items_widget.dart';

class HomePage extends StatelessWidget { 
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),

        // search
        Container(
          // height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here..."
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 27,
                  color: Color(0xFFF55151),
                )
              ],),
              ),

              // categperies
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsetsDirectional.symmetric(
                  vertical: 20,
                  horizontal: 10
                ),
                child: Text("Categories", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF55151),
                ),),
              ),
              CategoryWidget(),

              // items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF55151)
                  ),
                ),
              ),

              ItemsWidget(),
          ],),
        )
      ],),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFFF55151),
        items: [
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white,),
          Icon(Icons.list, size: 30, color: Colors.white,)
        ],
      ),
    );
  }
}
