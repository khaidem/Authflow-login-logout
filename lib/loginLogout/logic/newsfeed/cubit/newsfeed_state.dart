part of 'newsfeed_cubit.dart';

enum Status {
  initial,
  loading,
  loaded,
  error,
}

class NewsfeedState extends Equatable {
  const NewsfeedState({
    required this.status,
    this.newsfeedModle,
    this.error,
  });
  final Status status;
  final NewsfeedModle? newsfeedModle;
  final String? error;

  @override
  List<Object?> get props => [status, newsfeedModle, error];
}
