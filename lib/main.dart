import 'package:flutter/material.dart';
import 'package:test_drive/routes/route.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    ));
