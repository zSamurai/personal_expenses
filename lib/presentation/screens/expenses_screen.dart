import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  static const routeName = '/expenses-screen';

  @override
  _ExpensesScreenState createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> with SingleTickerProviderStateMixin {


  late AnimationController _controller;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 1), vsync: this,)..forward();
    offsetAnimation = Tween<Offset>(begin: Offset.zero,
    end: Offset(1.5, 0.0),).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 280,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background_image.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 100, 30, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal Expenses",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: Color(0xff505a59), fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    child: const Icon(
                      Icons.add,
                      size: 40,
                    ),
                    onPressed: () {},
                    backgroundColor: const Color(0xff267b7b),
                  ),
                )
              ],
            ),
          ),
          SlideTransition(position: offsetAnimation,
          child: ListTile(
            title: Text('expenseTitle'),
            subtitle: Text('date'),
          ),)
        ],
      ),
    );
  }
}
