import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Loading')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 100,
        itemBuilder: (context, index) {
          return FadeInImage.assetNetwork(
            placeholder: 'assets/placeholder.png', // Path to your placeholder image
            image: "assets/images/img.png",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ImageScreen(),
  ));
}
