import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_expenses/data/dummy_data.dart';
import 'package:personal_expenses/data/models/expense_model.dart';
import 'package:personal_expenses/presentation/widgets/list_item.dart';
import 'package:personal_expenses/presentation/widgets/modal_bottom_sheets/add_expense_sheet.dart';

class ExpensesScreen extends StatefulWidget {
   const ExpensesScreen({Key? key}) : super(key: key);

  static const routeName = '/expenses-screen';

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  List<Expense> expenseList = dummyData;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
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
                padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
                child: Column(
                  // In Column: text+add + expense summary
                  children: [
                    Row(
                      // In Row: Personal Expenses + add icon
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Personal Expenses",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xff706F6F), fontSize: 26),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            child: const Icon(
                              Icons.add,
                              size: 25,
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: const AddExpenseSheet(),
                                  ),
                                ),
                              );
                            },
                            backgroundColor: const Color(0xff267b7b),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: deviceSize.width,
                        height: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black26, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 40),
                                child: Text(
                                  "0.00 \$",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 20, color: Color(0xff636363)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final currentExpense = expenseList[index];
                    return ListItem(
                        id: currentExpense.id,
                        title: currentExpense.title,
                        amount: currentExpense.amount);
                  },
                  itemCount: expenseList.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
