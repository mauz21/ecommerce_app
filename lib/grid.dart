import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade400,
        title: Text(
          'GridView',
          style: TextStyle(
              color: Colors.blue,
              // decoration: TextDecoration.lineThrough,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 50,
              decorationThickness: BorderSide.strokeAlignInside),
        ),
        elevation: 3,
      ),
      // backgroundColor: Colors.grey,
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                // child: Image(image: AssetImage('images/beauty')),
              )
            ],
          )
        ],
      ),
    );
  }
}
