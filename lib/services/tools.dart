import 'package:flutter/services.dart';

bottomSystemColor({required Color color}) {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: color));
}
