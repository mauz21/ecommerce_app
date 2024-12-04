import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/women fashion.japan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: Text(
                  'English Grammar',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.mic_off),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.handshake),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/user_$index.jpg'),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
