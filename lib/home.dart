import 'package:flutter/material.dart';
import 'package:news_app/data/categories_model.dart';
import 'package:news_app/helper/News.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/news_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoriesModel> categories = [];
  var newlist;

  void getNews() async{
    News news = News();
    await news.getNews();
    newlist = news.news;
    // setState(() {
    //   _loading = false;
    // });
  }

  @override
  void initState() {
    // _loading = true;
    super.initState();
    categories = getCategories();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Flutter",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(imageAssetUrl: categories[index].imageAssetUrl,
                      categoryName: categories[index].categorieName);
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: ListView.builder(itemCount: newlist.length, shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index){
              return NewsTile(
                imgUrl: newlist[index].urlToImage ?? "",
                title: newlist[index].title ?? "",
                desc: newlist[index].description ?? "",
                content: newlist[index].content ?? "",
                posturl: newlist[index].articleUrl ?? "",
              );
            },),
          )
        ],
      ),
    );
  }
}
