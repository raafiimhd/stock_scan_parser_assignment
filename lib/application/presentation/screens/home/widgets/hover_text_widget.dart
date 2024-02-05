import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/cubit/hover_cubit.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/inside_the_home_listview/inside_the_home_listview.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';

class HoverableText extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color color;
  final int id;
  final int index;
  const HoverableText({super.key, 
    required this.title,
    required this.subTitle,
    required this.color,
    required this.index,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverCubit, HoverState>(
      builder: (context, state) {
        // Remove underscore from the title when hovered
        final updatedTitle =
            state.isHover ? title.replaceFirst('_', '') : title;

        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => InsideTheHomeListView(
                id: id,
                index: index,
              ),
            ));
          },
          onHover: (_) {
            context.read<HoverCubit>().handleHoverExit();
          },
          onTapCancel: () {
            context.read<HoverCubit>().handleHoverEnter();
          },
          onTapDown: (_) {
            context.read<HoverCubit>().handleHoverExit();
          },
          onTapUp: (_) {
            context.read<HoverCubit>().handleHoverEnter();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    const Text(
                      "• ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                    kWidth10,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: updatedTitle,
                          style: GoogleFonts.songMyung(
                            color: kWhite,
                            fontWeight: FontWeight.w500,
                            decorationThickness: 1,
                            decorationColor: kWhite,
                            decoration: state.isHover
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            fontSize: sWidth * 0.045,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: RichText(
                  text: TextSpan(
                    text: subTitle,
                    style: TextStyle(
                      decorationThickness: 1,
                      decorationColor: kWhite,
                      color: color,
                      decoration: state.isHover
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      fontSize: sWidth * 0.030,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 8),
                child: Text(
                  '••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••',
                  style: TextStyle(fontSize: 7, color: kWhite),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
