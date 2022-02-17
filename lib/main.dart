import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_biblia/pages/home_page.dart';
import 'package:flutter_biblia/shared/provider/book_provider.dart';
import 'package:flutter_biblia/shared/provider/navigation_provider.dart';
import 'package:flutter_biblia/shared/routes.dart';
import 'package:provider/provider.dart';

void main() async {
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
        ),
        ChangeNotifierProvider<NavigationProvider>(
          create: (context) => NavigationProvider(),
        ),
      ],
      child: FluentApp(
        title: 'Bíblia Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        routes: {AppRoutes.home: (ctx) => const HomePage()},
      ),
    );
  }
}
