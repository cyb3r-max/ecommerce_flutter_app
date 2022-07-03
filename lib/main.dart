import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled4/components/horizontal_list_view.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

void main() {
  runApp(
    new MaterialApp(
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
//    Widget image_carousel= new Container(
//      height: 200,

      children: CarouselSlider(

        items: ['1','2','3','4', '5'].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0),),
                color: Colors.blueAccent,
              );
            },
          );
        }).toList(), options: CarouselOptions(height: 200.0),
      );
//    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Shopify'),
        elevation: 0.0,
        actions: <Widget> [
          new IconButton(onPressed: null, icon: Icon(Icons.search, color: Colors.white),),
          new IconButton(onPressed: null, icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('John Smith'),
              accountEmail: Text('smith@gmail.com'),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home_filled),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite_border),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            )

          ],
        ),
      ),
      body: new ListView(
        children: <Widget> [
          new Padding(padding: EdgeInsets.all(8.0)),
          //HorizontalList()
        ],
      ),
    );
  }
}

