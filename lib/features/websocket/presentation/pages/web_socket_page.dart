import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_socket_guide/features/websocket/presentation/cubit/web_socket_cubit/web_socket_cubit.dart';

class WebSocketPage extends StatelessWidget {
  const WebSocketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WebSocket Example')),
      body: BlocBuilder<WebSocketCubit, String>(
        builder: (context, message) {
          return Center(child: Text('Received Message: $message'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final wsCubit = context.read<WebSocketCubit>();
          wsCubit.addSendMessage('Hello from WebSocket Example');
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
