import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  static RegisterBloc get(context) => BlocProvider.of(context);
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {});
  }
}
