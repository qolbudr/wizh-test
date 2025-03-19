import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/core/widget/w_input.dart';
import 'package:wizh_test/core/widget/w_refresher.dart';
import 'package:wizh_test/feature/main/controller/c_home/c_home.dart';

class VHomeMobile extends StatelessWidget {
  const VHomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CHome());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            WRefresher(
              header: const MaterialClassicHeader(distance: 90, height: 100),
              controller: o.refreshController,
              onRefresh: () => o.onGetData(),
              child: ListView(
                controller: o.scrollController,
                padding: EdgeInsets.zero,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        margin: const EdgeInsets.only(bottom: 25),
                        decoration: const BoxDecoration(
                          color: TColors.primaryColor,
                          image: DecorationImage(
                            image: AssetImage('assets/images/sillhouette.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: Const.parentMargin(),
                        right: Const.parentMargin(),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(x: 2.5), horizontal: Const.parentMargin()),
                          decoration: BoxDecoration(
                            color: TColors.baseWhite,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 3)),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Icon(IconsaxPlusLinear.notification, color: TColors.primaryColor, size: 16),
                                  Const.gap(),
                                  Text("Promo", style: TText.bodyXSMedium()),
                                ],
                              ),
                              Const.gap(),
                              Text("Daftar sekarang dapatkan promo liburan terbaru!", style: TText.bodyXSBold(color: TColors.primaryColor))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.siblingMargin(x: 2.5)),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                    children: [
                      ...o.menuItems.map(
                        (item) => SizedBox(
                          width: Get.width / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(item.icon, width: 50, height: 50),
                              Const.gap(x: 2),
                              Text(item.title, style: TText.bodyXSRegular(color: TColors.neutral60)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/banner-1.jpg", width: double.infinity, fit: BoxFit.cover),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 280),
                        padding: EdgeInsets.all(Const.parentMargin()),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffffde6b),
                              TColors.primaryColor,
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/banner-2.jpg",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Const.gap(x: 8),
                            Text("Healing ke Open/Private Trip.", style: TText.bodyBold(color: TColors.baseWhite)),
                            Text("Rileks di akomodasi pilihan. Pesannya pake diskon OTW", style: TText.bodyMRegular(color: TColors.baseWhite)),
                            Const.gap(x: 10),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 300,
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...o.state.data.map(
                                (item) => Container(
                                  width: 200,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    color: TColors.baseWhite,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 3)),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(item.image!, width: double.infinity, height: 120, fit: BoxFit.cover),
                                      Const.gap(x: 2),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(item.title!, style: TText.bodySBold()),
                                              Text(item.location!, style: TText.bodyXSRegular()),
                                              Text("${item.rating}/5 (942 Review)", style: TText.bodyXSRegular()),
                                              const Spacer(),
                                              Text(item.price!.toCurrency(), style: TText.bodyBold(color: TColors.primaryColor)),
                                              Const.gap(x: 2),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ].joinWidget(Const.gap(x: 4)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Const.gap(x: 4),
                  Container(color: TColors.neutral10, width: double.infinity, height: 8),
                  Padding(
                    padding: EdgeInsets.all(Const.parentMargin()),
                    child: Image.asset('assets/images/banner-3.png', width: double.infinity),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: TColors.baseWhite.withOpacity(o.state.headerOpacity),
                  padding: EdgeInsets.all(Const.parentMargin()),
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: WInput(
                            prefixIcon: Icon(IconsaxPlusLinear.search_normal),
                            hintText: "Penerbangan ke Surabaya",
                          ),
                        ),
                        Const.gap(x: 4),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: TColors.baseWhite,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            children: [
                              const Icon(IconsaxPlusLinear.discount_shape),
                              Const.gap(x: 2),
                              const Text("Promo"),
                              Const.gap(x: 2),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
