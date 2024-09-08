
/*
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  final TextEditingController? controller;

  final void Function(String query)? onChange;

  final Widget? leading;

  final Widget? trailing;

  final void Function()? onTap;

  const SearchAppBar({
    super.key,
    this.controller,
    this.onChange,
    this.leading,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.colorScheme.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: Row(
          children: [
            leading != null
                ? Padding(
                    padding: EdgeInsets.only(right: 5.0.w),
                    child: leading!,
                  )
                : const SizedBox(),
            Expanded(
              child: SizedBox(
                height: 50.h,
                child: TextFormField(
                  controller: controller,
                  onChanged: onChange,
                  onTap: onTap,
                  readOnly: onTap != null,
                  decoration: InputDecoration(
                    hintText: context.loc.search,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    fillColor: context.theme.colorScheme.onPrimary,
                    filled: true,
                    hintStyle: context.theme.textTheme.bodyMedium!.copyWith(
                      color: context.theme.colorScheme.primary.withOpacity(0.7),
                    ),
                  ),
                  style: context.theme.textTheme.bodyLarge!.copyWith(
                    color: context.theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
            trailing != null
                ? Padding(
                    padding: EdgeInsets.only(left: 5.0.w),
                    child: trailing!,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
*/