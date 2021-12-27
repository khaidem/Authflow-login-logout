import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'authflow_state.dart';

class AuthflowCubit extends Cubit<AuthflowState> {
  AuthflowCubit() : super(const AuthflowState(status: AuthStatus.isLogout)) {
    final FirebaseAuth auth = FirebaseAuth.instance;

    _auth = auth;

    auth.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(const AuthflowState(status: AuthStatus.islogin));
        } else {
          emit(const AuthflowState(status: AuthStatus.isLogout));
        }
      },
    );
  }
  late final FirebaseAuth _auth;

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signup(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
