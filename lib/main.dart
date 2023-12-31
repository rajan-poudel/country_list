import 'dart:async';

import 'package:country_list/src/common/constants/logger.dart';
import 'package:country_list/src/common/constants/route.dart';
import 'package:country_list/src/common/constants/string_constants.dart';
import 'package:country_list/src/common/core/common_observer.dart';
import 'package:country_list/src/common/themes/theme_color.dart';
import 'package:country_list/src/dependency_injection/get_it.dart' as getIt;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:hive/hive.dart';

import 'src/features/country_list/data/tables/country_table.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(getIt.init());
  Bloc.observer = CommonBlocObserver();
  final appDocumentDir = await path.getApplicationDocumentsDirectory();
  LogView.info(appDocumentDir.path);
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(CountryTableAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.countryList,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColor.vulcan,
        scaffoldBackgroundColor: AppColor.vulcan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: AppColor.royalBlue.withOpacity(0.2),
        ),
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.homeRoute,
    );
  }
}
