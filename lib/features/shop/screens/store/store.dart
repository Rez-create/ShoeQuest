import 'package:flutter/material.dart';
import 'package:shoe_quest/common/widgets/appbar/appbar.dart';
import 'package:shoe_quest/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shoe_quest/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shoe_quest/common/widgets/images/circular_image.dart';
import 'package:shoe_quest/common/widgets/layouts/grid_layout.dart';
import 'package:shoe_quest/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shoe_quest/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:shoe_quest/common/widgets/texts/section_heading.dart';
import 'package:shoe_quest/utils/constants/colors.dart';
import 'package:shoe_quest/utils/constants/enums.dart';
import 'package:shoe_quest/utils/constants/image_strings.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';
import 'package:shoe_quest/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: TAppBar(
              title: Text(
                'Store',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              actions: [TCartCounterIcon(onPressed: () {})]),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpaces),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // Search bar
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TSearchContainer(
                          text: 'Search in store',
                          showBackground: false,
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        // Featured Brands
                        TSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: TRoundedContainer(
                                  padding: EdgeInsets.all(TSizes.sm),
                                  showBoarder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      // Icon
                                      Flexible(
                                        child: TCircularImage(
                                          image: TImages.nikeIcon,
                                          isNetworkImage: false,
                                          backgroundColor: Colors.transparent,
                                          overlayColor: dark
                                              ? TColors.white
                                              : TColors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: TSizes.spaceBtwItems / 2,
                                      ),

                                      // Text
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large,
                                            ),
                                            Text(
                                              '185 products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                  // Tabs for the categories
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: TColors.primary,
                    unselectedLabelColor: TColors.darkgrey,
                    labelColor: THelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.primary,
                    tabs: [
                      Tab(child: Text('formal')),
                      Tab(child: Text('sneakers')),
                      Tab(child: Text('sports')),
                      Tab(child: Text('men')),
                      Tab(child: Text('women')),
                      Tab(child: Text('kids')),
                    ],
                  ),
                ),
              ];
            },
            body: Container(),
          )),
    );
  }
}
