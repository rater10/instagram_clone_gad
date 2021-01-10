import 'package:instagram_clone_gad/src/actions/auth/index.dart';
import 'package:redux/redux.dart';
import 'package:instagram_clone_gad/src/models/index.dart';

Reducer<AuthState> reducer =
    combineReducers(<Reducer<AuthState>>[TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful)]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}
