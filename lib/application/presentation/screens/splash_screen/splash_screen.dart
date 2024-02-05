import 'package:flutter/material.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          Navigator.of(context).pushNamed('/home');
        },
      );
    });
    return const Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Text(
          'Stock Market Scan',
          style: TextStyle(
            fontSize: 25,
            color: kBlack,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
