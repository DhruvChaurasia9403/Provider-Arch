import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Favourite(),
      ),
    );
  }
}