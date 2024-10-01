import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_socket_guide/features/websocket/presentation/cubit/web_socket_cubit/web_socket_cubit.dart';
import 'package:flutter_web_socket_guide/features/websocket/presentation/pages/web_socket_page.dart';
import 'package:flutter_web_socket_guide/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init(); // GetIt setup

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebSocket Clean Arch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<WebSocketCubit>(
        create: (_) => getIt<WebSocketCubit>()
          ..addConnect()
          ..addListen(),
        child: const WebSocketPage(),
      ),
    );
  }
}
