import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/bloc/stock_bloc.dart';
import 'package:stock_scan_parser_application/application/bussiness_logic/cubit/hover_cubit.dart';
import 'package:stock_scan_parser_application/application/presentation/routes/routes.dart';
import 'package:stock_scan_parser_application/application/presentation/routes/routes_generator.dart';
import 'package:stock_scan_parser_application/data/config/config.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(StockMarketScan(routeGenerator: RouteGenerator(),));
}

class StockMarketScan extends StatelessWidget {
  final RouteGenerator routeGenerator;
  const StockMarketScan({super.key,required this.routeGenerator});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HoverCubit>(),),
        BlocProvider(create: (context) => getIt<StockBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
          initialRoute: Routes.initial,
          onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
