part of 'authflow_cubit.dart';

enum AuthStatus { islogin, isLogout }

class AuthflowState extends Equatable {
  const AuthflowState({required this.status});
  final AuthStatus status;

  @override
  List<Object> get props => [status];
}
