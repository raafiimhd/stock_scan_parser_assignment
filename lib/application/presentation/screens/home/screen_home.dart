import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/bloc/stock_bloc.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/home/widgets/hover_text_widget.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<StockBloc>().add(const StockEvent.getAllStockEvent());
    });
    return Scaffold(
        backgroundColor: kWhite,
        body: Padding(
          padding: const EdgeInsets.only(left: 7, right: 7, top: 70),
          child: Container(
            color: kBlack,
            height: sHeight * 0.50,
            child:
                BlocBuilder<StockBloc, StockState>(builder: (context, state) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.stock.length,
                itemBuilder: (context, index) {
                  final stocks = state.stock[index];

                  return HoverableText(
                      title: stocks.name!,
                      id: stocks.id!,
                      index: index,
                      subTitle: stocks.tag!,
                      color: stocks.color == 'red' ? kRed : kGreen);
                },
              );
            }),
          ),
        ));
  }
}
