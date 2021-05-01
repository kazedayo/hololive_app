import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/home/home_page.dart';
import 'package:hololive_app/repository/home_page_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => HomePageRepository(),
      child: BlocProvider(
        create: (context) => HomePageBloc(
          repository: RepositoryProvider.of<HomePageRepository>(context),
        ),
        child: MaterialApp(
          title: 'Hololive App',
          theme: ThemeData(
            primarySwatch: Colors.cyan,
          ),
          home: HomePage(),
        ),
      ),
    );
  }
}
