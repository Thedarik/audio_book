import 'package:audio_book/src/feature/home/view/library_page.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Assalomu alaykum"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LibraryPage()));
        },
      ),
    );
  }
}
