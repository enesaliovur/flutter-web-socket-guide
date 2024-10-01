import 'package:bloc/bloc.dart';
import 'package:flutter_web_socket_guide/features/websocket/domain/repositories/i_web_socket_repository.dart';

class WebSocketCubit extends Cubit<String> {
  WebSocketCubit(this._webSocketRepository) : super('');
  final IWebSocketRepository _webSocketRepository;

  Future<void> addConnect()  {
   return  _webSocketRepository.connect();
  }

  Future<void> addSendMessage(String message)  {
    return _webSocketRepository.sendMessage(message);
  }

  Future<void> addListen() async {
    _webSocketRepository.messageStream.listen((message) {
      emit(message);
    });
  }

  Future<void> addDisconnect() async {
    _webSocketRepository.disconnect();
  }
}
