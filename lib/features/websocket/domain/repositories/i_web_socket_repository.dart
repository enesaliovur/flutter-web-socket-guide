abstract class IWebSocketRepository {
  Future<void> connect();
  Future<void> disconnect();
  Future<void> sendMessage(String message);
  Stream<String> get messageStream;
}
