import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/service/notification_service.dart';
import 'package:hololive_app/ui/home/home_page.dart';
import 'package:hololive_app/repository/home_page_repository.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('notiBox');
  await NotificationService().init();
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
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'Hololive App',
          theme: ThemeData.from(
                  colorScheme: const ColorScheme.light()
                      .copyWith(primary: Colors.white, onPrimary: Colors.black))
              .copyWith(
                  textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(primary: Colors.black))),
          darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()),
          home: HomePage(),
        ),
      ),
    );
  }
}
