import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arc/DarkTheme/DarkThemeProvider.dart';
import 'package:provider_arc/DarkTheme/darkTheme.dart';
import 'package:provider_arc/Home/count_provider.dart';
import 'package:provider_arc/favourite/favourite.dart';
import 'package:provider_arc/favourite/provider.dart';
import 'package:provider_arc/multiProvider/example1provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
            create: (context) => CountProvider(),
        ),
        ChangeNotifierProvider(
            create: (context) => Favorite_Provider(),
        ),
        ChangeNotifierProvider(
          create : (context)=>DarkThemeProvider(),
        ),
      ],
      child: Builder(builder: (BuildContext context){
        final themeProvider = Provider.of<DarkThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          darkTheme: ThemeData(
            primaryColor: Colors.grey[800],
            primarySwatch: Colors.purple,
            appBarTheme: AppBarTheme(color: Colors.teal),
            brightness: Brightness.dark,
            iconTheme: IconThemeData(color: Colors.pink),
          ),
          theme: ThemeData(
            brightness: Brightness.light,
            cardColor: Colors.red,
            primaryColor: Colors.red,
            primarySwatch: Colors.red,
            iconTheme: IconThemeData(color: Colors.green),
            appBarTheme: AppBarTheme(color: Colors.red),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
            useMaterial3: true,
          ),

          home:Darktheme(),
        );
      }),




      //for the other apps like favourite uncomment this and comment the child use material but for theme use builder
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'Flutter Demo',
      //   // themeMode: ProviderTheme.themeMode,
      //   theme: ThemeData(
      //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //     useMaterial3: true,
      //   ),
      //   home:Darktheme(),
      // ),
    );
  }
}