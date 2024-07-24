import 'package:flutter/material.dart';
import 'package:food_app/cusine_list_screen.dart';

class CategoryScreen extends StatelessWidget {
  final List<String> categories = [
    'Newari', 'Chinese', 'Italian', 'Korean', 'Vietnamese'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: GridView.builder(
        padding:  EdgeInsets.all(10),
        itemCount: categories.length,
        //liverGridDelegateWithMaxCrossAxisExtent is used to create a grid with flexible cross-axis extents.
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

          //specifies the maximum extent (width for vertical scrolling grids or height for horizontal scrolling grids) that each child can have along the cross axis.
          maxCrossAxisExtent: 200,

          
          //pecifies the aspect ratio of each child in the grid, defined as the ratio of the width to the height.
          childAspectRatio: 3 / 2,

          //sets the spacing between children along the cross axis (horizontal spacing in a vertically scrolling grid).
            crossAxisSpacing: 20,


          //sets the spacing between children along the main axis (vertical spacing in a vertically scrolling grid).
          mainAxisSpacing: 20,


        ),

        itemBuilder: (ctx, index) {
          //gesture widget is used to detect various gestures such as taps, swipes, and long presses.
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CuisineListScreen(categories[index]),
              ));
         },
            
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                categories[index],
              
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
