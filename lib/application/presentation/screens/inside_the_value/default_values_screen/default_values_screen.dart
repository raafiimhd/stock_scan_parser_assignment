import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_scan_parser_application/application/presentation/util/customs/custom_text_form_fild.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';
import 'package:stock_scan_parser_application/domain/core/constant/const.dart';
import 'package:stock_scan_parser_application/domain/models/variable_model/variable_item.dart';


class DefaultValuesScreen extends StatelessWidget {
  DefaultValuesScreen({Key? key, required this.item}) : super(key: key);

  final VariableItem item;

  final TextEditingController _controller = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _controller.text = item.defaultValue.toString();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7, top: 70),
        child: Form(
          key: formKey,
          child: Container(
            color: kBlack,
            height: sHeight * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 13),
                  child: Text(
                    item.studyType!.toUpperCase(),
                    style: defaultTypeStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 13),
                  child: Text('Set Parameters', style: textStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 100,
                    color: kWhite,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.parmaterName!,
                              style: GoogleFonts.songMyung(
                                color: kBlack,
                                fontWeight: FontWeight.w500,
                                fontSize: sWidth * 0.045,
                              )),
                          kWidth100,
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: CustomTextFormField(
                                controller: _controller,
                                keyboardType: TextInputType.number,
                                
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
        ),
      ),
    );
  }
}
