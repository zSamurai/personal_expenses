import 'package:flutter/material.dart';
import 'package:personal_expenses/presentation/screens/expenses_screen.dart';
import 'package:personal_expenses/presentation/screens/login_screen.dart';

void main() {
  runApp(const PersonalExpensesApp());
}

class PersonalExpensesApp extends StatelessWidget {
  const PersonalExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      routes: {
        ExpensesScreen.routeName: (context) => const ExpensesScreen(),
      },
    );
  }
}
