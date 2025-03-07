import 'package:flutter/material.dart';
import 'package:shoe_quest/common/widgets/appbar/appbar.dart';
import 'package:shoe_quest/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shoe_quest/utils/constants/colors.dart';
import 'package:shoe_quest/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.black)),
          Text(TTexts.homeAppBarSubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
