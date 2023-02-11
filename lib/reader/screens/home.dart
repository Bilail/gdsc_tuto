import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_tuto/reader/models/article.dart';
import 'package:gdsc_tuto/reader/widgets/article_list_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Tuto GDSC')
      ),
      body : Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ArticleListTile(article: Article(title : "Titre" , author: "Auteur", url : "FR", date:"2022"),)
            ],
          )
        ]

      ),
    );
  }
}
