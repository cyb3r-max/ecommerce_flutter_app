import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
              image_location:'images/t-shirt.png',
              image_caption:'T-shirt',
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget{
   String image_location;
   String image_caption;

  Categories({
    required this.image_location,
    required this.image_caption});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
    duration: const Duration(seconds: 2),
    child: InkWell(onTap: (){},
      child: ListTile(
        title: Image.asset(image_location),
        subtitle: Text(image_caption)
      ),
    ),
    );
  }
}