import 'package:instagram_clone_gad/src/data/auth_api/auth_api.dart';
import 'package:instagram_clone_gad/src/epics/auth_epics.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:meta/meta.dart';

class AppEpics {
  const AppEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
    ]);
  }
}
