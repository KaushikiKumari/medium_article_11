import 'package:flutter/material.dart';
import 'package:medium_article_11/resources/colors/app_colors.dart';

class TableView extends StatefulWidget {
  const TableView({Key? key}) : super(key: key);

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // scaffold background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const Text(
          'Flutter Table',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Table",
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Table(
                textDirection: TextDirection.rtl,
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border:
                    TableBorder.all(width: 2.0, color: AppColors.blackColor),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const TableRow(
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                      ),
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Name",
                              style: TextStyle(color: AppColors.whiteColor),
                              textScaleFactor: 1.1,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Number",
                              style: TextStyle(color: AppColors.whiteColor),
                              textScaleFactor: 1.1,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Grade",
                              style: TextStyle(color: AppColors.whiteColor),
                              textScaleFactor: 1.1,
                            ),
                          ),
                        ),
                      ]),
                  ...List.generate(
                      7,
                      (index) => const TableRow(children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.blackColor),
                                  textScaleFactor: 1,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Number",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.blackColor),
                                  textScaleFactor: 1,
                                ),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Grade",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.blackColor),
                                  textScaleFactor: 1,
                                ),
                              ),
                            ),
                          ]))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
