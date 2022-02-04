import 'package:flutter/material.dart';
import 'package:flutter_biblia/shared/models/bible.dart';
import 'package:flutter_biblia/shared/provider/book_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolher um livro'),
      ),
      body: FutureBuilder<Bible>(
        future: bookProvider.data(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  child: Column(
                children: snapshot.data!.books
                    .map((book) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(book.name),
                        ))
                    .toList(),
              )),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
