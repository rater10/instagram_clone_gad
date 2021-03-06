import 'package:instagram_clone_gad/src/actions/auth/index.dart';
import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:redux/redux.dart';
import 'package:instagram_clone_gad/src/models/index.dart';

Reducer<AuthState> reducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, SignupSuccessful>(_signupSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpWithGoogleSuccessful>(_signUpWithGoogleSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _signupSuccessful(AuthState state, SignupSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.username != null) {
      b.info.username = action.username;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _signUpWithGoogleSuccessful(AuthState state, SignUpWithGoogleSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}
