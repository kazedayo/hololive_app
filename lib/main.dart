import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hololive_app/bloc/cubit/app_settings_cubit.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/service/notification_service.dart';
import 'package:hololive_app/ui/home/home_page.dart';
import 'package:hololive_app/repository/home_page_repository.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('notiBox');
  await NotificationService().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget with WidgetsBindingObserver {
  // This widget is the root of your application.
  final AppSettingsCubit appThemeCubit = AppSettingsCubit();

  MyApp({Key? key}) : super(key: key);

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    appThemeCubit.toggleDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addObserver(this);
    return RepositoryProvider(
      create: (context) => HomePageRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => HomePageBloc(
                  repository:
                      RepositoryProvider.of<HomePageRepository>(context))),
          BlocProvider(
            create: (context) => appThemeCubit,
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'HoloSchedule',
          theme: ThemeData.from(
            colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.white,
              onPrimary: Colors.black,
              secondary: Colors.blue[200],
              secondaryContainer: Colors.blue[400],
            ),
          ).copyWith(
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(primary: Colors.blue[400]),
            ),
          ),
          darkTheme: ThemeData.from(
            colorScheme: const ColorScheme.dark().copyWith(
              primary: Colors.blue[200],
              primaryContainer: Colors.blue[400],
              secondary: Colors.lightBlue[100],
              secondaryContainer: Colors.lightBlueAccent,
            ),
          ).copyWith(applyElevationOverlayColor: false),
          home: const HomePage(),
        ),
      ),
    );
  }
}
