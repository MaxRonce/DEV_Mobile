import 'package:flutter/material.dart';
import 'package:tp2_flutter/UI/card4.dart';
import 'package:tp2_flutter/UI/home.dart';
import 'package:tp2_flutter/UI/mytheme.dart';
import 'package:tp2_flutter/UI/mytheme_provider.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';


void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: MyTD2(),
    ),
  );
}

class MyTD2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) {
              SettingViewModel settingViewModel = SettingViewModel();
              //getSettings est deja appelee dans le constructeur
              return settingViewModel;
            }),
        ChangeNotifierProvider(
            create: (_) {
              TaskViewModel taskViewModel = TaskViewModel();
              taskViewModel.generateTasks();
              return taskViewModel;
            })
      ],
      child: Consumer<SettingViewModel>(
        builder: (context, SettingViewModel notifier, child) {
          return MaterialApp(
              theme: notifier.isDark ? MyTheme.dark() : MyTheme.light(),
              title: 'TD2',
              home: Home()
          );
        },
      ),
    );
  }
}
