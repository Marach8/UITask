import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/asset_image_strings.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/extensions/context_extensions.dart';
import 'package:ui_task/src/core/utils/sizes.dart';
import 'package:ui_task/src/features/onboarding/presentation/widgets/onboarding_contents.dart';
import 'package:ui_task/src/shared/annotated_region.dart';
import 'package:ui_task/src/shared/custom_container.dart';
import 'package:ui_task/src/shared/image_loader.dart';

class UIOnboardingScreen extends StatelessWidget {
  const UIOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UIAnnotatedRegion(
      statusBarColor: UIColors.trsprnt,
      systemBarColor: UIColors.black,
      child: Scaffold(
        body: UIContainer(
          height: context.screenHeight,
          width: context.screenWidth,
          padding: const EdgeInsets.fromLTRB(UISizes.k20, UISizes.k48, UISizes.k20, UISizes.k20),
          image: DecorationImage(
            image: AssetImage(UIAssetStrings.PEOPLE_JAMMING_HANDS),
            fit: BoxFit.cover,
          ),
          child: const OnboardingContents(),
        ),
      ),
    );
  }
}
