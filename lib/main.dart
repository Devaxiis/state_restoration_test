import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const RootRestorationScope(
      restorationId: "root",
      child: MyApp()));

}
