import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/bloc/stock_bloc.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/inside_the_home_listview/widgets/list_tile_widget.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';

class InsideTheHomeListView extends StatelessWidget {
  const InsideTheHomeListView({super.key, required this.id, required this.index});
  final int id;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: Padding(
          padding: const EdgeInsets.only(left: 7, right: 7, top: 70),
          
            child: BlocBuilder<StockBloc, StockState>(builder: (context, state) {
              return ListTileWidget(
                index: index,
                state: state,
                color: state.stock[index].color=='red'?kRed:kGreen,
              );
            }),
        ));
  }
}
