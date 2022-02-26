import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '블록컨텍스트',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${BlocProvider.of<CounterCubit>(context, listen: true).state.counter}',
                  style: const TextStyle(fontSize: 52.0),
                ),
                ElevatedButton(
                  child: const Text(
                    '카운트증가',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
