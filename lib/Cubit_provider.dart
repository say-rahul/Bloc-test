import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/Counter_cubit.dart';
import 'package:myapp/Cubitui.dart';

class CubitProvider extends StatefulWidget {
  const CubitProvider({super.key});

  @override
  State<CubitProvider> createState() => _CubitProviderState();
}

class _CubitProviderState extends State<CubitProvider> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Countercubit(),
      child: const Cubitui(),
    );
  }
}
