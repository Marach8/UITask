import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/asset_image_strings.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/extensions/context_extensions.dart';
import 'package:ui_task/src/core/utils/sizes.dart';
import 'package:ui_task/src/core/utils/strings.dart';
import 'package:ui_task/src/shared/custom_container.dart';
import 'package:ui_task/src/shared/elevated_button.dart';
import 'package:ui_task/src/shared/image_loader.dart';
import 'package:ui_task/src/shared/outlined_button.dart';

class OnboardingContents extends StatelessWidget{
  const OnboardingContents({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        final bool shouldScroll = constraints.maxHeight < 450;
        if(shouldScroll){
          return const SingleChildScrollView(
            child: _Contents(shouldScroll : true),
          );
        }
        return const _Contents(shouldScroll: false,);
      }
    );
  }
}



class _Contents extends StatelessWidget {
  const _Contents({required this.shouldScroll});

  final bool shouldScroll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UIContainer(
          onTap: (){},
          radius: 20,
          padding: const EdgeInsets.fromLTRB(UISizes.k12, UISizes.k8, UISizes.k8, UISizes.k8),
          border: Border.all(color: UIColors.hexFFFFFF),
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                UIStrings.ENGLISH_US,
                style: context.textTheme.bodyMedium,
              ),
              const Icon(Icons.keyboard_arrow_down, size: UISizes.k16)
            ],
          ),
        ),

        if(!shouldScroll)const Spacer(),
        if(shouldScroll) const SizedBox(height: 150,),

        Text(
          UIStrings.CONNECT_WITH_COMMUNITY,
          style: context.textTheme.headlineLarge,
          maxLines: 4,
        ),
        const SizedBox(height: 20),
        UIElevatedBtnWithIcon(
          onPressed: (){},
          buttonTitle: UIStrings.CONTINUE_WITH_APPLE,
          icon: UIImageLoader(
            height: 16, width: 16,
            imgPath: UIAssetStrings.APPLE_ICON,
          )
        ),
        const SizedBox(height: 10,),
        UIElevatedBtnWithIcon(
          onPressed: (){},
          buttonTitle: UIStrings.CONTINUE_WITH_GOOGLE,
          bgColor: UIColors.hex2E90FA,
          icon: UIImageLoader(
            height: 16, width: 16,
            imgPath: UIAssetStrings.GOOGLE_ICON,
          )
        ),
        const SizedBox(height: 10,),
        UIOutlinedButtonWithIcon(
          onPressed: (){},
          buttonTitle: UIStrings.CONTINUE_WITH_EMAIL,
          icon: const Icon(Icons.email_outlined, size: 16,)
        ),
        const SizedBox(height: 20,),
        Text(
          maxLines: 2, textAlign: TextAlign.center,
          UIStrings.TERMS_AND_PRIVACY,
          style: context.textTheme.bodySmall
        )
      ],
    );
  }
}
