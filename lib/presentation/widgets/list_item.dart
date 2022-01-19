import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_expenses/presentation/widgets/modal_bottom_sheets/detailed_expense_sheet.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key, required this.id, required this.title, required this.amount})
      : super(key: key);

  final int id;
  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const DetailedExpenseSheet(),
            ),
          ),
        );
      },
      child: SizedBox(
        width: deviceSize.width,
        height: 90,
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff636363),
                        ),
                      ),
                    ),
                    Text(
                      amount.toString() + " \$",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff636363),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    id.toString(),
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 11,
                        color: Color(0xffC6C6C6),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
