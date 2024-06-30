import 'package:artisan/common/artist_logo.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsOnSaleSection extends StatefulWidget {
  final String imagePath;
  final String imageTitle;
  const ItemsOnSaleSection({
    super.key,
    required this.imagePath,
    required this.imageTitle,
  });

  @override
  State<ItemsOnSaleSection> createState() => _ItemsOnSaleSectionState();
}

class _ItemsOnSaleSectionState extends State<ItemsOnSaleSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254.57,
      width: 175.38,
      decoration: BoxDecoration(
        border: Border.all(
          color: GlobalVariables.welcomeTitleColor.withOpacity(0.2),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 159.38,
              width: 156.58,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 6, right: 5),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: GlobalVariables.darkRed,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            WelcomeTitle(
                welcomeTitle: widget.imageTitle,
                welcomeTitleColor: Colors.black,
                welcomeTitleFontSize: 15.46,
                welcomeTitleFontFamily: 'DM Sans',
                welcomeTitleFontWeight: FontWeight.w600),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ArtistLogo(),
                    const SizedBox(
                      height: 6.8,
                    ),
                    Row(
                      children: [
                        const WelcomeTitle(
                            welcomeTitle: 'NRs. 2000',
                            welcomeTitleColor:
                                GlobalVariables.welcomeTitleColor,
                            welcomeTitleFontSize: 11.59,
                            welcomeTitleFontFamily: 'Open Sans',
                            welcomeTitleFontWeight: FontWeight.w600),
                        const SizedBox(
                          width: 6.8,
                        ),
                        WelcomeTitle(
                            welcomeTitle: 'NRs. 3000',
                            welcomeTitleColor: Colors.black.withOpacity(0.6),
                            welcomeTitleFontSize: 11,
                            welcomeTitleFontFamily: 'Open Sans',
                            welcomeTitleFontWeight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.add_box_rounded,
                  color: GlobalVariables.welcomeTitleColor,
                  size: 33,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
