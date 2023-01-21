import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../dtos/user_dto.dart';
import '../repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationBloc(this._authenticationRepository)
      // Initialize Bloc with init State
      : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) async {
      // Using the 'on' keyword, ..add(AuthenticationStarted) in the main
      // will trigger this event
      if (event is AuthenticationStarted) {
        UserDto user = await _authenticationRepository.getCurrentUser().first;
        if (user.uid != "uid") {
          emit(const AuthenticationSuccess());
        } else {
          emit(AuthenticationFailure());
        }
      } else if (event is AuthenticationSignedOut) {
        await _authenticationRepository.signOut();
        emit(AuthenticationFailure());
      }
    });
  }
}
