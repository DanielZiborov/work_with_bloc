import 'package:flutter/material.dart';

class DogsScreen extends StatelessWidget {
  const DogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("Dogs"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "",
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            )
          ],
        ),
      ),
    );
  }
}
