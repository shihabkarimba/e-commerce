import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../Bloc/UserProfile/user_profile_bloc.dart';
import '../../../../Core/Router/route.dart';
import '../../../../Domain/Repository/LocalAuthRepo/local_auth_repo.dart';
import '../../../Shared/Widgets/show_dialog.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
              .copyWith(top: 50),
          constraints: const BoxConstraints(
            minWidth: double.maxFinite,
            minHeight: 100,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<UserProfileBloc, UserProfileState>(
                builder: (context, state) {
                  return switch (state) {
                    UserProfileLoadedState(userModel: final userData) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${userData.name}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            '${userData.email}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    UserProfileInitialState() ||
                    UserProfileLoadingState() ||
                    UserProfileErrorState() =>
                      const Expanded(child: SizedBox.shrink())
                  };
                },
              ),
              IconButton(
                onPressed: () {
                  buildDialog(
                      context: context,
                      content: 'Are you sure you want to logout',
                      onButtonPressed: () async {
                        router.goNamed(Routes.login.name);
                        await GetIt.I<LocalAuthRepository>().removeUser();
                      },
                      actionText: 'Logout',
                      title: 'Warning');
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
