import 'package:bloc/bloc.dart';
import 'package:e_commerce/Models/UserModel/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

import '../../Domain/Repository/FirebaseAuthRepo/firebase_auth_repo.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final _auth = GetIt.I<FirebaseAuthRepository>();

  UserProfileBloc() : super(UserProfileInitialState()) {
    on<OnGetUserProfileEvent>(_getUserData);
  }
  void _getUserData(
      OnGetUserProfileEvent event, Emitter<UserProfileState> emit) async {
    emit(UserProfileLoadingState());

    try {
      print('-' * 100);
      final res = await _auth.getUserProfile();
      if (res != null) {
        emit(UserProfileLoadedState(userModel: res));
      } else {
        emit(const UserProfileErrorState());
      }
    } catch (e) {
      emit(const UserProfileErrorState());
    }
  }
}
