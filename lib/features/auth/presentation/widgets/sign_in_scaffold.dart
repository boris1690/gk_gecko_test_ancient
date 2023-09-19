import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:gk_gecko_test_ancient/extra/constants/assets.dart';
import 'package:gk_gecko_test_ancient/extra/constants/strings.dart';
import 'package:gk_gecko_test_ancient/extra/routes/app_router.gr.dart';

import '../../application/sign_in_form/sign_in_form_bloc.dart';
import 'sign_in_form.dart';

class SignInScaffold extends StatefulWidget {
  const SignInScaffold({super.key, required this.typeForm});

  final String typeForm;

  @override
  State<SignInScaffold> createState() => _SignInScaffoldState();
}

class _SignInScaffoldState extends State<SignInScaffold> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.typeForm == Strings.singIn
              ? AppLocalizations.of(context)!.signIn
              : AppLocalizations.of(context)!.signUp),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 24),
            Image.asset(
              Assets.appLogo,
              height: 200.0,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            const SignInForm(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithEmailAndPasswordPressed());
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                widget.typeForm == Strings.singIn
                    ? AppLocalizations.of(context)!.signIn
                    : AppLocalizations.of(context)!.signUp,
              ),
            ),
            if (widget.typeForm == Strings.singIn) ...[
              const SizedBox(height: 10),
              Row(children: <Widget>[
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Text(AppLocalizations.of(context)!.or,
                    style: TextStyle(color: Colors.white)),
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.router.push(
                    SignInRoute(
                        typeForm: widget.typeForm == Strings.singIn
                            ? Strings.singUp
                            : Strings.singIn),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.blue,
                  ),
                  padding: const EdgeInsets.all(15),
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  widget.typeForm != Strings.singIn
                      ? AppLocalizations.of(context)!.signIn
                      : AppLocalizations.of(context)!.signUp,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
