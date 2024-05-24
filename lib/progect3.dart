import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("rasm")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 100,
        itemBuilder: (context, index) {
          String imagePath = 'assets/images/img${index + 1}.png';
          return Image.asset(
            "assets/images/img_3.png",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}