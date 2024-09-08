import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/new_name_input.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/presentation/change_name/controllers/change_name_controller.dart';
import 'package:fin_dall/features/profile/presentation/change_name/controllers/change_name_form_controller.dart';
import 'package:fin_dall/features/profile/presentation/widgets/change_profile_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

/// [showNameEditor] is a function that shows the name editor modal sheet.
///
/// It returns a [Future] of [String] that represents the new name.
///
Future<Profile?> showNameEditor(BuildContext context, String currentName) {
  return Navigator.push<Profile?>(
    context,
    ModalSheetRoute<Profile?>(
      swipeDismissible: true,
      builder: (context) => ChangeNameEditor(
        currentName: currentName,
      ),
    ),
  );
}

/// [ChangeNameEditor] is a widget that displays the name editor.
///
/// It provides a form for changing the name.
///
/// [currentName] is the current name of the user.
///
class ChangeNameEditor extends ConsumerWidget {
  final String currentName;
  const ChangeNameEditor({
    super.key,
    required this.currentName,
  });

  @override
  Widget build(BuildContext context, ref) {
    // Listen to the profile state to show the loader overlay and handle the navigation.
    ref.listen<ControllerState<Profile>>(changeNameControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading():
          context.loaderOverlay.show();
          break;

        case ControllerStateData(data: final profile):
          context.loaderOverlay.hide();
          AutoRouter.of(context).maybePop(profile).then(
                (value) => context.showSuccessSnackBar(
                  content: context.loc.changeNameSuccess,
                ),
              );

          break;
        case ControllerStateError(error: final error):
          context.loaderOverlay.hide();
          context.showErrorSnackBar(
            content: error.getUIMessage(context: context),
          );

          break;
      }
    });

    final isValid = ref.watch(
        changeNameFormControllerProvider(currentName: currentName)
            .select((value) => value.isValid));
    return ChangeProfileEditor(
      title: context.loc.changeNameTitle,
      description: context.loc.changeNameDescription,
      onCanceled: () => ref
          .read(changeNameFormControllerProvider(currentName: currentName)
              .notifier)
          .reset(),
      onSubmitted: isValid
          ? () {
              final form = ref.read(
                  changeNameFormControllerProvider(currentName: currentName));

              if (form.isValid) {
                ref.read(changeNameControllerProvider.notifier).changeName(
                      name: form.name.value,
                    );
              }
            }
          : null,
      children: [
        Consumer(
          builder: (context, ref, child) {
            final name = ref.watch(
              changeNameFormControllerProvider(currentName: currentName)
                  .select((value) => value.name),
            );
            return NewNameInput(
              name: name,
              onChanged: ref
                  .read(
                      changeNameFormControllerProvider(currentName: currentName)
                          .notifier)
                  .nameChanged,
              textInputAction: TextInputAction.done,
            );
          },
        )
      ],
    );
  }
}
