import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/recipe_detail.dart';


class CuisineListScreen extends StatelessWidget {
  final String category;

  CuisineListScreen(this.category);

  final Map<String, List<Map<String, String>>> cuisines = {
    'Newari': [
      {'name': 'Yomari - Newari Delight', 'image': 'assets/images/yomari.jpeg'},
      {'name': ' Chatamari', 'image': 'assets/images/chatamari.jpeg'},
    ],
    // Add other categories similarly
  };

  @override
  Widget build(BuildContext context) {
    final cuisineList = cuisines[category];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Cuisines'),
      ),
      body: ListView.builder(
        //itemcount defines the number of items in the list.
        itemCount: cuisineList?.length,

        //itembuilder function that creates the widgets to display for each item in the list.
        //ctx means BuildContext of the widget.
        itemBuilder: (ctx, index) {
          print("hello" + cuisineList![index].toString());
          return ListTile(
            leading: Image.asset(cuisineList![index]['image']!),
            
            title: Text(cuisineList[index]['name']!),
           
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RecipeDetail(
                  cuisineList[index]['name']!,
                
                ),
              ));
            },
          );
          
        },
      ),

);
  }
  
}
 
 