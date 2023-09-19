import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gk_gecko_test_ancient/features/core/presentation/widgets/alert_helper.dart';
import 'package:gk_gecko_test_ancient/features/home/core/application/home_bloc.dart';
import 'package:gk_gecko_test_ancient/features/home/core/presentation/widgets/card_content.dart';

import '../../../../auth/application/sign_out/sign_out_bloc.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<HomeBloc>().add(const HomeEvent.billboard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.home),
        actions: [
          IconButton(
            onPressed: () =>
                context.read<SignOutBloc>().add(const SignOutEvent.signedOut()),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (p, c) => p.data != c.data,
        listener: (context, state) => state.data.fold(
          () {},
          (either) => either.fold(
            (failure) => AlertHelper.showSnackBar(
              context,
              message: failure.map(
                storage: (_) => AppLocalizations.of(context)!.storageError,
                server: (_) => AppLocalizations.of(context)!.serverError,
                noConnection: (_) =>
                    AppLocalizations.of(context)!.noConnectionError,
              ),
            ),
            (_) {},
          ),
        ),
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (context, state) {
          return state.data.fold(
            () {
              return Container();
            },
            (either) => either.fold(
              (l) => Container(),
              (r) =>
                  Row(children: [...r.map((item) => CardContent(data: item))]),
            ),
          );
        },
      ),
    );
  }
}
