import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/bloc/stock_bloc.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/inside_the_value/default_values_screen/default_values_screen.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/inside_the_value/values_sorted_screen/values_sorted_screen.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.index,
    required this.state,
    required this.color,
  }) : super(key: key);

  final int index;
  final Color color;
  final StockState state;

  @override
  Widget build(BuildContext context) {
    final stocks = state.stock[index];
    final titleWords = state.stock[0].name!.split(' ');
    final capitalTitle = titleWords.map((word) {
      return word[0].toUpperCase() + word.substring(1);
    }).join(' ');
    String replaceOverbought(String input) {
      const String target = "Overbought";
      const String replacement = "Reversal";

      return input.replaceAll(target, replacement);
    }

    return Container(
      color: kBlack,
      height: sHeight * 0.50,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 16, top: 15),
            child: Container(
              height: sHeight * 0.10,
              width: sWidth * 0.9,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(77, 145, 201, 1)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index == 0
                          ? capitalTitle
                          : replaceOverbought(stocks.name!),
                      style: textStyle,
                    ),
                    Text(
                      state.stock[index].tag!,
                      style: TextStyle(
                        fontSize: sWidth * 0.030,
                        color:
                            state.stock[index].color == "red" ? kRed : kGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemCount: stocks.criteria!.length,
              itemBuilder: (context, index) {
                final criterion = stocks.criteria![index];
                final replacedText = replacePlaceholders(
                    criterion.text, criterion.variable, context);
                return Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: replacedText,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return stocks.criteria!.length > 1
                    ? const Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 10),
                        child: Text(
                          'and',
                          style: TextStyle(color: kWhite, fontSize: 10),
                        ),
                      )
                    : const SizedBox();
              }),
        ],
      ),
    );
  }

  List<Widget> replacePlaceholders(String? text,
      Map<String, VariableItem>? variables, BuildContext context) {
    List<InlineSpan> inlineSpans = [];

    if (variables == null) {
      inlineSpans.add(
        TextSpan(
          text: text!.trim(),
          style: textStyle,
        ),
      );
      return [RichText(text: TextSpan(children: inlineSpans))];
    }

    var splitted = text;

    variables.forEach((key, value) {
      var replaceValue;

      if (value.type == "indicator") {
        replaceValue = value.defaultValue;
      }
      if (value.type == "value") {
        replaceValue = value.values![0];
      }

      var parts = splitted!.split(key);
      if (parts.length > 2) {
        final replace = parts[2].replaceFirst(">", "greater than");
        inlineSpans.add(
          TextSpan(
            text: replace.trim(),
            style: replaceValueStyle,
          ),
        );
      } else {
        inlineSpans.add(
          TextSpan(
            text: parts[0].toString().trim(),
            style: textStyle,
          ),
        );
        inlineSpans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: () {
                context.read<StockBloc>().add(StockEvent.toggleClick());
                if (value.type == "value") {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ValuesWidget(variableItem: value)));
                }
                if (value.type == "indicator") {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => DefaultValuesScreen(item: value)));
                }
              },
              child: Text(
                "(${replaceValue.toString()})",
                style: state.isClick
                    ? replaceValueAfterClickStyle
                    : replaceValueStyle,
              ),
            ),
          ),
        );
      }

      splitted = parts.sublist(1).join();
    });

    if (splitted != null && splitted!.isNotEmpty) {
      inlineSpans.add(
        TextSpan(
          text: splitted!.trim(),
          style: textStyle,
        ),
      );
    }

    return [RichText(text: TextSpan(children: inlineSpans))];
  }
}
