import 'package:chat_ui/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/model/message_model.dart'; // Assuming MessageModel is defined in this file

class FavoritesContact extends StatefulWidget {
  const FavoritesContact({Key? key})
      : super(key: key); // Fix typo in super keyword

  @override
  State<FavoritesContact> createState() => _FavoritesContactState();
}

class _FavoritesContactState extends State<FavoritesContact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Favorites Contact",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ), // Remove const keyword since Text widget is being modified
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons
                        .more_horiz)), // Remove const keyword since IconButton widget is being modified
              ],
            ),
          ),
          SizedBox(
            height: 130,
            // color: Colors.blue,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites
                  .length, // Assuming favorites is a list of MessageModel objects
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl!),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          favorites[index].name!,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold),
                        ), // Accessing name property of sender in MessageModel
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
