import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arc/Home/count_provider.dart';
class providerLearning extends StatefulWidget {
  const providerLearning({super.key});

  @override
  State<providerLearning> createState() => _providerLearningState();
}

class _providerLearningState extends State<providerLearning> {

  void initstate(){
    super.initState();
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }


  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    return Scaffold(
      body:Center(
        child: Consumer<CountProvider>(
          builder:(context , value , child){
            return Text(value.count.toString(),style: const TextStyle(fontSize: 30),);
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
