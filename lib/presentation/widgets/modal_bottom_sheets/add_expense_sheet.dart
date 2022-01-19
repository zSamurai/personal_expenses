import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddExpenseSheet extends StatelessWidget {
  const AddExpenseSheet({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Please enter expense ID",
                        contentPadding: const EdgeInsets.only(bottom: -20),
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.black26),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 2)),
                      ),
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Please enter expense amount",
                        contentPadding: const EdgeInsets.only(bottom: -20),
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.black26),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 2)),
                      ),
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Please enter expense title",
                        contentPadding: const EdgeInsets.only(bottom: -20),
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.black26),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black54, width: 2)),
                      ),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pick Date",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 17, color: Colors.black54),
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
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
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
                        "ADD",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 17),
                        ),
                      ),
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
