import 'package:flutter/material.dart';

import '../components/card_small.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ホーム')),
      body: Column(children: [
        SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            leading: const Icon(Icons.search),
          );
        }, suggestionsBuilder:
                (BuildContext context, SearchController controller) {
          return List<ListTile>.generate(5, (int index) {
            final String item = 'item $index';
            return ListTile(
              title: Text(item),
              onTap: () {
                // setState(() {
                //   controller.closeView(item);
                // });
              },
            );
          });
        }),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text("ジャンルから選ぶ", style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
        ),
        const Row(
          children: [
            card_small(imageUrl: "https://via.placeholder.com/300/09f/fff.png", text: "中華料理"),
            card_small(imageUrl: "https://via.placeholder.com/300/09f/fff.png", text: "中華料理"),
            card_small(imageUrl: "https://via.placeholder.com/300/09f/fff.png", text: "中華料理"),
            card_small(imageUrl: "https://via.placeholder.com/300/09f/fff.png", text: "中華料理"),
          ]
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text("注目の飲食店", style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
        ),
      ]),
    );
  }
}
