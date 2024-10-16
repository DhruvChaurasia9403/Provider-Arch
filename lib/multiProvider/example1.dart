import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arc/multiProvider/example1provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double value = 1.0; // Local variable is not used, could be removed for clarity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ExampleOneProvider>(
        builder: (context, value1, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Slider, which changes the provider value
              Slider(
                min: 0,
                max: 1,
                value: value1.value,
                onChanged: (val) {
                  value1.setValue(val); // Updating provider value
                },
              ),
              // Row with two containers
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: value1.value * 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(value1.value),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: value1.value * 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(value1.value),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('Container 2'), // Changed text to "Container 2"
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
