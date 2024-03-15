import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../local_notification_manager.dart';

part 'fcm_bloc.freezed.dart';

@freezed
class FCMEvent with _$FCMEvent {
  factory FCMEvent.initMessage() = _UpdateTokenMessageEvent;
}

@freezed
class FCMState with _$FCMState {
  factory FCMState() = _FCMState;
}

@injectable
class FCMBloc extends Bloc<FCMEvent, FCMState> {
  StreamSubscription<String?>? _tokenStreamSubscription;
  StreamSubscription<RemoteMessage>? _messageStreamSubscription;

  FCMBloc() : super(FCMState()) {
    on<_UpdateTokenMessageEvent>(_initMessage);
  }

  Future<void> _initMessage(_UpdateTokenMessageEvent event, Emitter<FCMState> emit) async {
    final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    firebaseMessaging.requestPermission();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    LocalNotificationManager.shared.init();

    String? fcmToken = await firebaseMessaging.getToken();
    if (fcmToken != null) {
      debugPrint("token : $fcmToken");
    }

    _tokenStreamSubscription?.cancel();
    _tokenStreamSubscription = firebaseMessaging.onTokenRefresh.listen((newToken) async {
      debugPrint("token : $newToken");
    });

    _messageStreamSubscription?.cancel();
    _messageStreamSubscription = FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        _showNotification(message);
      }
    });
  }


  void _showNotification(RemoteMessage message) {
    LocalNotificationManager.shared.showNotificationWithNoBody(
      title: message.notification!.title!,
      body: message.notification!.body!,
      payload: message.data['payload'],
    );
  }

  /// [_firebaseMessagingBackgroundHandler] is a function that handle the background message.
  @pragma('vm:entry-point')
  Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
  }

  @override
  Future<void> close() {
    _tokenStreamSubscription?.cancel();
    _messageStreamSubscription?.cancel();
    return super.close();
  }
}
