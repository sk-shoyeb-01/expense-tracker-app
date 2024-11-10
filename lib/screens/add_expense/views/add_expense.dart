import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<String> myCategoryIcons = [
    'bike',
    'burger',
    'drink',
    'educatrion',
    'gym',
    'medical',
    'movie'
  ];

  @override
  void initState() {
    dateController.text = DateFormat('M/d/y').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Add New Expense",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: expenseController,
                      decoration: InputDecoration(
                          hintText: "Enter Amount",
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            FontAwesomeIcons.dollarSign,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                        controller: categoryController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText: "Select Category",
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(
                              FontAwesomeIcons.list,
                              color: Colors.grey,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (ctx) {
                                      bool isExpanded = false;

                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return AlertDialog(
                                            title:
                                                const Text("Create a Category"),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: TextFormField(
                                                      textAlignVertical:
                                                          TextAlignVertical
                                                              .center,
                                                      decoration: InputDecoration(
                                                          fillColor:
                                                              Colors.white,
                                                          hintText:
                                                              "Enter Name",
                                                          hintStyle:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 16),
                                                          filled: true,
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none))),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  child: TextFormField(
                                                      readOnly: true,
                                                      onTap: () {
                                                        setState(() {
                                                          isExpanded =
                                                              !isExpanded;
                                                        });
                                                      },
                                                      textAlignVertical:
                                                          TextAlignVertical
                                                              .center,
                                                      decoration:
                                                          const InputDecoration(
                                                              isDense: true,
                                                              suffixIcon: Icon(
                                                                CupertinoIcons
                                                                    .chevron_down,
                                                                size: 12,
                                                              ),
                                                              fillColor:
                                                                  Colors.white,
                                                              hintText:
                                                                  "Select Icon",
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 16),
                                                              filled: true,
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.vertical(
                                                                          top: Radius.circular(
                                                                              12)),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none))),
                                                ),
                                                isExpanded
                                                    ? Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 200,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    bottom: Radius
                                                                        .circular(
                                                                            12))),
                                                        child: GridView.builder(
                                                          gridDelegate:
                                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                                  crossAxisCount:
                                                                      3),
                                                          itemCount:
                                                              myCategoryIcons
                                                                  .length,
                                                          itemBuilder:
                                                              (context, int i) {
                                                            return Container(
                                                              width: 50,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          'asset/${myCategoryIcons[i]}.png'))),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    : const SizedBox(
                                                        height: 10,
                                                      ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                TextFormField(
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    readOnly: true,
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (ctx2) {
                                                            return AlertDialog(
                                                              content: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  ColorPicker(
                                                                      pickerColor:
                                                                          Colors
                                                                              .blue,
                                                                      onColorChanged:
                                                                          (value) {
                                                                        print(
                                                                            value);
                                                                      }),
                                                                  SizedBox(
                                                                      width: MediaQuery.of(
                                                                                  context)
                                                                              .size
                                                                              .width *
                                                                          0.8,
                                                                      height:
                                                                          kToolbarHeight,
                                                                      child:
                                                                          TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              ctx2);
                                                                        },
                                                                        style: TextButton.styleFrom(
                                                                            backgroundColor:
                                                                                Colors.black,
                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                                                                        child:
                                                                            const Text(
                                                                          "Submit",
                                                                          style:
                                                                              TextStyle(color: Colors.white),
                                                                        ),
                                                                      ))
                                                                ],
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    decoration: InputDecoration(
                                                        fillColor: Colors.white,
                                                        hintText:
                                                            "Choose color",
                                                        hintStyle:
                                                            const TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 16),
                                                        filled: true,
                                                        border:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none)))
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    });
                              },
                              icon: const Icon(
                                FontAwesomeIcons.plus,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                        controller: dateController,
                        textAlignVertical: TextAlignVertical.center,
                        onTap: () async {
                          DateTime? newdate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025));
                          if (newdate == null) {
                            setState(() {
                              dateController.text =
                                  DateFormat('M/d/y').format(DateTime.now());
                            });
                          } else {
                            setState(() {
                              dateController.text =
                                  DateFormat('M/d/y').format(newdate);
                            });
                          }
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter Date",
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            filled: true,
                            prefixIcon: const Icon(
                              FontAwesomeIcons.calendar,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: kToolbarHeight,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
