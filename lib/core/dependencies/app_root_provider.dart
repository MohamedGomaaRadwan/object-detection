import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/fcm/presentation/bloc/fcm_bloc.dart';
import 'dependency_init.dart';

class AppRootProvider extends StatelessWidget {
  final Widget child;
  final FCMBloc _messageBloc = getIt<FCMBloc>();
  AppRootProvider({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _messageBloc),
      ],
      child: child,
    );
  }
}
