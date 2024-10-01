import 'dart:async';
import 'dart:io';

import 'package:flutter_web_socket_guide/core/utils/constants.dart';

class WebSocketRemoteDataSource {
  WebSocket? _webSocket;
  final StreamController<String> _messageController =
      StreamController<String>();

  Future<void> connect() async {
    _webSocket = await WebSocket.connect(websocketUrl);
    _webSocket?.listen((event) {
      _messageController.add(event);
    });
  }

  Stream<String> get messageStream => _messageController.stream;

  void sendMessage(String message) {
    _webSocket?.add(message);
  }

  Future<void> disconnect() async {
    return _webSocket?.close();
  }
}
