import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_quest/common/styles/shadows.dart';
import 'package:shoe_quest/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shoe_quest/common/widgets/icons/circular_icon.dart';
import 'package:shoe_quest/common/widgets/images/rounded_image.dart';
import 'package:shoe_quest/common/widgets/products/product_cards/product_price_text.dart';
import 'package:shoe_quest/common/widgets/texts/product_title_text.dart';
import 'package:shoe_quest/utils/constants/colors.dart';
import 'package:shoe_quest/utils/constants/image_strings.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // Container with side paddings, color, edges , radius
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkgrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist button, Discount tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail/ image
                  TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  //  -----Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context).textTheme.labelLarge!.apply(
                                color: TColors.black,
                              )),
                    ),
                  ),

                  // Favourite Icon
                  Positioned(
                    top: 5,
                    right: 2,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      size: TSizes.iconSm,
                      color: Colors.red,
                      width: TSizes.iconLg,
                      height: TSizes.iconLg,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections / 2),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Air Jordan 9',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        width: TSizes.xs,
                      ),
                      Icon(Iconsax.verify5,
                          color: TColors.primary, size: TSizes.iconXs)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      TProductPriceText(price: '4500.00'),

                      // Add to cart button
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
