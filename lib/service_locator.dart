import 'package:flutter_web_socket_guide/features/websocket/data/repositories/web_socket_respository_impl.dart';
import 'package:flutter_web_socket_guide/features/websocket/data/web_socket_remote_data_source.dart';
import 'package:flutter_web_socket_guide/features/websocket/domain/repositories/i_web_socket_repository.dart';
import 'package:flutter_web_socket_guide/features/websocket/presentation/cubit/web_socket_cubit/web_socket_cubit.dart';
import 'package:get_it/get_it.dart';

// GetIt instance
final getIt = GetIt.instance;

Future<void> init() async {
  // Cubit
  getIt.registerFactory(() {
    return WebSocketCubit(
      getIt<IWebSocketRepository>(),
    );
  });

  // Repository
  getIt.registerLazySingleton<IWebSocketRepository>(
      () => WebSocketRespositoryImpl(getIt()));

  // Data sources
  getIt.registerLazySingleton<WebSocketRemoteDataSource>(
      () => WebSocketRemoteDataSource());
}
