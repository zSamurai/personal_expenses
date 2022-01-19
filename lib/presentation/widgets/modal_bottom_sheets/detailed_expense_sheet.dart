import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_expenses/presentation/widgets/modal_bottom_sheets/edit_expense_sheet.dart';

class DetailedExpenseSheet extends StatelessWidget {
  const DetailedExpenseSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          color: Color(0xff95d3c4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  "Expense Name",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 30, color: Colors.black54),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expense Amount",
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                  Text(
                    "100 \$",
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ),
                    Text(
                      "20/10/2019",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 80, 45, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color(0xff267b7b),
                      child: IconButton(
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: const EditExpenseSheet(),
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color(0xff267b7b),
                      child: IconButton(
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
