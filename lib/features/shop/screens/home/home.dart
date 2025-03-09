// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoe_quest/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shoe_quest/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shoe_quest/common/widgets/layouts/grid_layout.dart';
import 'package:shoe_quest/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shoe_quest/common/widgets/texts/section_heading.dart';
import 'package:shoe_quest/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shoe_quest/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shoe_quest/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shoe_quest/utils/constants/image_strings.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // ------------------------ HomeAppBar ------------------------
                  THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // ------------------------ SearchBar ------------------------
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  // ------------------------ Categories ------------------------
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpaces),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpaces),
              child: Column(
                children: [
                  // Promo Slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner4,
                      TImages.promoBanner5,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Featured Peoducts
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
