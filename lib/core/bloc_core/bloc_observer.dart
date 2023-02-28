import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/log_service/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SampleBlocObserver extends BlocObserver {
  SampleBlocObserver() {
    _logService = Injector.instance<LogService>();
  }

  late final LogService _logService;

  @override
  void onCreate(BlocBase bloc) {
    _logService.i('BLoC: ${bloc.runtimeType} creared');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logService.i('Event: ${event.runtimeType} added');
    super.onEvent(bloc, event);
  }
}
