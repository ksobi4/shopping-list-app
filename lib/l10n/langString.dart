import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

var jsonEN, jsonPL;

class LangString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'pl': jsonPL,
        'en': jsonEN,
      };
}

Future<void> initLangs() async {
  jsonEN = json.decode(await rootBundle.loadString("./lang_en.json"));
  jsonPL = json.decode(await rootBundle.loadString("./lang_pl.json"));

  print(jsonEN);
}
