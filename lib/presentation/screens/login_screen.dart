import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_expenses/presentation/screens/expenses_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 200,
                child: Image.asset("assets/images/logo_image.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffa8e3e8),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ExpensesScreen.routeName);
                  },
                  child: const Text(""),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 200),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffa8e3e8),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ExpensesScreen.routeName);
                  },
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
