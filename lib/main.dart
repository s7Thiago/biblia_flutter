import 'package:flutter/material.dart';
import 'package:flutter_biblia/shared/provider/book_provider.dart';
import 'package:flutter_biblia/shared/routes.dart';
import 'package:flutter_biblia/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BookProvider>(
          create: (context) => BookProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {AppRoutes.home: (ctx) => const HomePage()},
      ),
    );
  }
}
