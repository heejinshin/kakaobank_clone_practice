import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakaobank_clone_practice/blocs/home/home_cubit.dart';
 import 'package:kakaobank_clone_practice/presentation/home/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter KaKaobank',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        appBarTheme: AppBarTheme(
        color: Colors.transparent,
      elevation: 0.0,
    ),
    ),
    routes: {
        '/': (context) {
          return BlocProvider(
            create: (_) => HomeCubit(),
            child: HomePage(),
          );
        }
    },
    );
  }
}
