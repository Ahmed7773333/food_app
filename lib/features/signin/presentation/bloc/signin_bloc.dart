import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  static SigninBloc get(context) => BlocProvider.of(context);

  SigninBloc() : super(SigninInitial()) {
    on<SigninEvent>((event, emit) {});
  }
}
