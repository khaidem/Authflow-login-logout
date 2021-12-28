import 'package:bloc/bloc.dart';
import 'package:day20/loginLogout/data/model/newsfeed.model.dart';
import 'package:day20/loginLogout/data/repo/newsfeed.repo.dart';
import 'package:equatable/equatable.dart';

part 'newsfeed_state.dart';

class NewsfeedCubit extends Cubit<NewsfeedState> {
  NewsfeedCubit({required this.repo})
      : super(const NewsfeedState(status: Status.initial));

  final NewsfeedRepo repo;

  Future<void> getNewsFeedData() async {
    if (isLoading) return;

    emit(const NewsfeedState(status: Status.loading));
    try {
      final data = await repo.getData();
      emit(NewsfeedState(status: Status.loaded, newsfeedModle: data));
    } catch (e) {
      emit(NewsfeedState(status: Status.error, error: e.toString()));
    }
  }

  bool get isLoading => state.status == Status.loading;
}
