import 'package:flutter_web_socket_guide/features/websocket/data/web_socket_remote_data_source.dart';
import 'package:flutter_web_socket_guide/features/websocket/domain/repositories/i_web_socket_repository.dart';

class WebSocketRespositoryImpl implements IWebSocketRepository {
  WebSocketRespositoryImpl(this._webSocketRemoteDataSource);

  final WebSocketRemoteDataSource _webSocketRemoteDataSource;

  @override
  Future<void> connect() async {
    return _webSocketRemoteDataSource.connect();
  }

  @override
  Stream<String> get messageStream => _webSocketRemoteDataSource.messageStream;

  @override
  Future<void> sendMessage(String message) async {
    return _webSocketRemoteDataSource.sendMessage(message);
  }
  
  @override
  Future<void> disconnect() {
    return _webSocketRemoteDataSource.disconnect();
  }
}
