import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFFF55151),
            ),
          const Padding(padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "Toko Merah",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF55151)
            ),
          ),
          ),
          const Spacer(),
          badges.Badge(
            onTap: () {},
            badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xFFF55151),),
            badgeContent: (
              const Text("3", style: TextStyle(color: Colors.white),)
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xFFF55151),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

