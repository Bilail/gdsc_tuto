import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';

class ArticleListTile extends StatefulWidget {
  const ArticleListTile({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  State<ArticleListTile> createState() => _ArticleListTileState();
}

class _ArticleListTileState extends State<ArticleListTile> {

  @override
  Widget build(BuildContext context) {
    final color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    final textColor = color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    return Card(
      margin: EdgeInsets.all(10),
        elevation: 10,
        color : color,
        child : ListTile(
          title: Text(widget.article.title,
                style: TextStyle(fontWeight: FontWeight.bold, color: textColor)),
          subtitle: Column(
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.article.author, style: TextStyle(color : textColor)),
                Text(widget.article.date, style : TextStyle(color : textColor)),
              ],
            )
            ],
          )
        )
    );

  }
}
