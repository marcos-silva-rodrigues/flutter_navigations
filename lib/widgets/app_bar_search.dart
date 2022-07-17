import 'package:flutter/material.dart';

class AppSearchBar extends SearchDelegate<String> {
  final products = [
    "TV",
    "Macbook",
    "Geladeria",
    "Iphone",
    "Teclado",
    "Ipad",
    "Mouse",
    "Copo"
  ];

  final recentSearch = [
    "Macbook",
    "Iphone",
    "Ipad",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.cancel))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          query = "";
          close(context, "");
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Resultado para a pesquisa: $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final result = query.isEmpty ? recentSearch : products;

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(result[index]),
          leading: Icon(Icons.youtube_searched_for),
          onTap: () {
            print(result[index]);
          },
        );
      },
    );
  }
}
