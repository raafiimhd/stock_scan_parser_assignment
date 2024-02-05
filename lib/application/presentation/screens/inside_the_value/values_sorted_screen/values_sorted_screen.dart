import 'package:flutter/material.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';

class ValuesWidget extends StatelessWidget {
  const ValuesWidget({Key? key, required this.variableItem}) : super(key: key);

  final VariableItem variableItem;

  @override
  Widget build(BuildContext context) {
    List<dynamic> sortedValues = List.from(variableItem.values!);
    sortedValues.sort((a, b) => a.abs().compareTo(b.abs()));

    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7, top: 70),
        child: Column(
          children: [
            Container(
              color: kBlack,
              height: sHeight * 0.50,
              child: ListView.builder(
                itemCount: sortedValues.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                              sortedValues[index].toString(),
                              style: textStyle,
                            
                          ),
                        ),
                        const Padding(
                     padding: EdgeInsets.only(left: 10,top: 8),
                     child: Text('••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••',
                     style: TextStyle(
                      fontSize: 7,
                      color: kWhite
                     ),),
                                     )
                      ],
                    ),
                  );
                }, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
