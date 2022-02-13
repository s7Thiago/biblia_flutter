import 'package:flutter/material.dart';
import 'package:flutter_biblia/shared/models/bible.dart';

class BookProvider extends ChangeNotifier {
  String _data = "Conteúdo recebido!";

  Future<Bible> data(BuildContext context) async {
    _data = await DefaultAssetBundle.of(context)
        .loadString("assets/biblia/acf.json");

    Bible bible = Bible.fromJson(_data);

    return Future.value(bible);
  }

  void updateTeste(String newValue) {
    _data = newValue;
    notifyListeners();
  }
}
