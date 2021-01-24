import 'package:flutter/material.dart';
import 'package:pantry/models/user.dart';
import 'package:pantry/screens/wrapper.dart';
import 'package:pantry/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
