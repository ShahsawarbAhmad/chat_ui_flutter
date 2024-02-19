import 'package:chat_ui/widgets/category_selectors.dart';
import 'package:chat_ui/widgets/favorites_contact.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Chats",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        elevation: 0.0,
        actions: [
          IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          const CategorySelector(),
          Expanded(
            child: Container(
              // color: Color(0xFFFEF9EB),
              decoration: const BoxDecoration(
                  color: Color(0xFFFEF9EB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),

              child:
                  const Column(children: [FavoritesContact(), RecentChats()]),
            ),
          )
        ],
      ),
    );
  }
}
