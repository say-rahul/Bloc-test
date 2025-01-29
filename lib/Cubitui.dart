import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/Counter_cubit.dart';

class Cubitui extends StatelessWidget {
  const Cubitui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter")),
      body: Center(
        child: BlocBuilder<Countercubit, int>(
          builder: (context, state) {
            return Text(
              'Counter: $state',
              style: const TextStyle(fontSize: 32),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Countercubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () => context.read<Countercubit>().increment(),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
