import 'package:flutter/material.dart';
import 'dart:async';

class ComputationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Heavy Computation')),
      body: FutureBuilder<int>(
        future: heavyComputation(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Center(child: Text('Result: ${snapshot.data}'));
          } else {
            return Center(child: Text('No result'));
          }
        },
      ),
    );
  }

  Future<int> heavyComputation() async {
    return await computeSum();
  }

  Future<int> computeSum() async {
    // Simulate a heavy computation
    int sum = 0;
    for (int i = 0; i < 1000000000; i++) {
      sum += i;
    }
    return sum;
  }
}

void main() {
  runApp(MaterialApp(
    home: ComputationScreen(),
  ));
}
