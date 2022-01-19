import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditExpenseSheet extends StatelessWidget {
  const EditExpenseSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          color: Color(0xff95d3c4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  hintText: "Expense ID",
                  contentPadding: const EdgeInsets.only(bottom: -20),
                  helperStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black26,
                  ),
                ),
                keyboardType: TextInputType.number,
                maxLines: 1,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  hintText: "Expense Amount",
                  contentPadding: const EdgeInsets.only(bottom: -20),
                  helperStyle:
                      GoogleFonts.poppins(fontSize: 18, color: Colors.black26),
                ),
                keyboardType: TextInputType.number,
                maxLines: 1,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  hintText: "Expense Title",
                  contentPadding: const EdgeInsets.only(bottom: -20),
                  helperStyle:
                      GoogleFonts.poppins(fontSize: 18, color: Colors.black26),
                ),
                maxLines: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20/10/2019",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff267b7b),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Pick Date",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff267b7b),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "EDIT",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
