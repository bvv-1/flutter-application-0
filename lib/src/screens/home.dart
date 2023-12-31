import 'package:flutter/material.dart';

import '../components/card_small.dart';
import '../components/card_large.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ホーム')),
      body: SingleChildScrollView(
        child: Column(children: [
          SearchAnchor(builder: (
            BuildContext context,
            SearchController controller,
          ) {
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
          }, suggestionsBuilder: (
            BuildContext context,
            SearchController controller,
          ) {
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
          Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("ジャンルから選ぶ",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
              ),
              const Divider(),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 1行に表示するアイテムの数
                  mainAxisExtent: 120,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const CardSmall(
                      imageUrl: "https://via.placeholder.com/300/09f/fff.png",
                      text: "中華料理");
                },
              ),
            ],
          ),
          Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "注目の飲食店",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              const Divider(),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 1行に表示するアイテムの数
                  mainAxisExtent: 180,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const CardLarge(
                    imageUrl: "https://via.placeholder.com/300/09f/fff.png",
                    text: "有名町中華",
                  );
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
