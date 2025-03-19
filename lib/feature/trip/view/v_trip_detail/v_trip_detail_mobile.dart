import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/core/widget/w_button.dart';
import 'package:wizh_test/feature/trip/controller/c_trip_detail/c_trip_detail.dart';
import 'package:wizh_test/gen/assets.gen.dart';

class VTripDetailMobile extends StatelessWidget {
  const VTripDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CTripDetail());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: TabBarView(
                        controller: o.tabController,
                        children: [
                          Image.asset('assets/images/villa-2.png', width: double.infinity, height: 300, fit: BoxFit.cover),
                          Image.asset('assets/images/villa-1.jpeg', width: double.infinity, height: 300, fit: BoxFit.cover),
                          Image.asset('assets/images/villa-3.png', width: double.infinity, height: 300, fit: BoxFit.cover),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: Const.parentMargin(x: 2),
                      left: Const.parentMargin(),
                      right: Const.parentMargin(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 80),
                          const Spacer(),
                          ...List.generate(
                            3,
                            (index) => Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: o.state.tabIndex == index ? TColors.baseWhite : TColors.baseWhite.withOpacity(0.6)),
                              width: o.state.tabIndex == index ? 20 : 8,
                              height: 8,
                            ),
                          ).joinWidget(Const.gap()),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 2)),
                            decoration: BoxDecoration(
                              color: TColors.baseBlack.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                const Icon(IconsaxPlusBold.gallery, color: TColors.baseWhite, size: 16),
                                Const.gap(),
                                Text("Galeri", style: TText.bodySMedium(color: TColors.baseWhite)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Const.gap(x: 4),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Villa Asri Makmur Sekali", style: TText.subHeadingBold()),
                      Const.gap(x: 2),
                      Row(
                        children: [
                          const Icon(IconsaxPlusLinear.message_tick, color: TColors.primaryColor, size: 40),
                          Const.gap(x: 4),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text: "4.5", style: TText.subHeadingBold(color: TColors.neutral60)),
                                      TextSpan(text: "/5 (942 Review)", style: TText.bodyXSRegular(color: TColors.neutral60)),
                                    ],
                                  ),
                                ),
                                Const.gap(),
                                Text("493RB+ Terjual", style: TText.bodySRegular()),
                              ],
                            ),
                          )
                        ],
                      ),
                      Const.gap(x: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(IconsaxPlusBold.location, size: 20, color: TColors.neutral60),
                          Const.gap(x: 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jl. Raya Puncak, Cisarua, Bogor", style: TText.bodySRegular(color: TColors.neutral60), maxLines: 1, overflow: TextOverflow.ellipsis),
                                Text("Indonesia", style: TText.bodySRegular(color: TColors.neutral60)),
                              ],
                            ),
                          ),
                          Const.gap(x: 2),
                          const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
                        ],
                      ),
                      Const.gap(x: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(IconsaxPlusBold.clock, size: 20, color: TColors.neutral60),
                          Const.gap(x: 2),
                          Expanded(
                            child: Text("Buka · Rabu · 09:00 - 17:00", style: TText.bodySRegular(color: TColors.neutral60), maxLines: 1, overflow: TextOverflow.ellipsis),
                          ),
                          Const.gap(x: 2),
                          const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
                        ],
                      ),
                    ],
                  ),
                ),
                Const.gap(x: 4),
                Container(
                  color: TColors.blue10.withOpacity(0.2),
                  padding: EdgeInsets.all(Const.parentMargin()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Assets.images.hotel.image(width: 30, height: 30),
                          Const.gap(x: 4),
                          Expanded(child: Text("Klaim Benefit Khusus Log In", style: TText.bodySemiBold(), maxLines: 1, overflow: TextOverflow.ellipsis)),
                          Const.gap(x: 4),
                          const Icon(IconsaxPlusLinear.arrow_right_3, size: 20),
                        ],
                      ),
                      Const.gap(x: 4),
                      Container(
                        padding: EdgeInsets.all(Const.parentMargin()),
                        decoration: BoxDecoration(
                          color: TColors.blue30.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Icon(IconsaxPlusBold.star, size: 20, color: TColors.blue50),
                            Const.gap(x: 2),
                            Expanded(
                              child: Text("Dapatkan 10% Cashback", style: TText.bodySRegular(color: TColors.blue50), maxLines: 1, overflow: TextOverflow.ellipsis),
                            ),
                            Const.gap(x: 2),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 2)),
                              decoration: BoxDecoration(
                                color: TColors.blue50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text("Klaim", style: TText.bodySMedium(color: TColors.baseWhite)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  child: Container(
                    padding: EdgeInsets.all(Const.parentMargin()),
                    decoration: BoxDecoration(
                      color: TColors.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text("Info Penting & Highlight", style: TText.bodyMSemiBold()),
                      Const.gap(x: 2),
                      Text(
                          "Villa Asri Makmur Sekali adalah villa yang berlokasi di Puncak, Bogor. Villa ini memiliki fasilitas yang lengkap dan nyaman untuk keluarga. Dengan harga yang terjangkau, villa ini memiliki rating 4.5/5 dari 942 review.",
                          style: TText.bodySRegular(color: TColors.neutral60)),
                    ]),
                  ),
                ),
                Container(color: TColors.primaryColor.withOpacity(0.1), width: double.infinity, height: 8),
                Padding(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Paket", style: TText.bodyBold()),
                      Text("Cek ketersediaan paket", style: TText.bodySRegular()),
                      Const.gap(x: 4),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: TColors.neutral30),
                            ),
                            padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 4)),
                            child: Text("Besok", style: TText.bodyMRegular()),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: TColors.neutral30),
                            ),
                            padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 4)),
                            child: Text("21 Mar", style: TText.bodyMRegular()),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: TColors.neutral30),
                            ),
                            padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(), horizontal: Const.siblingMargin(x: 4)),
                            child: Text("Lainnya", style: TText.bodyMRegular()),
                          )
                        ].joinWidget(Const.gap(x: 2)),
                      ),
                      Const.gap(x: 4),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Const.parentMargin()),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [TColors.primaryColor.withOpacity(0.1), TColors.baseWhite],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tiket Weekday - Domestik", style: TText.bodyBold()),
                      Const.gap(x: 4),
                      ...[1, 2]
                          .map(
                            (item) => Container(
                              padding: EdgeInsets.all(Const.parentMargin()),
                              decoration: BoxDecoration(
                                color: TColors.baseWhite,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 3)),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(child: Text("[Domestik - Weekday] Tiket Masuk Villa Asri Makmur Sekali", style: TText.bodyMSemiBold())),
                                      Const.gap(x: 2),
                                      Text("Detail", style: TText.bodyMSemiBold(color: TColors.primaryColor)),
                                    ],
                                  ),
                                  Const.gap(x: 3.5),
                                  Row(
                                    children: [
                                      const Icon(IconsaxPlusLinear.money),
                                      Const.gap(x: 2),
                                      Text("Tidak bisa refund", style: TText.bodyXSRegular()),
                                    ],
                                  ),
                                  Const.gap(x: 2),
                                  Row(
                                    children: [
                                      const Icon(IconsaxPlusLinear.calendar),
                                      Const.gap(x: 2),
                                      Text("Pesan tiket untuk besok", style: TText.bodyXSRegular()),
                                    ],
                                  ),
                                  Const.gap(x: 3.5),
                                  Container(width: double.infinity, height: 1, color: TColors.neutral10),
                                  Const.gap(x: 3.5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [Text("Rp 493.000", style: TText.bodyBold(color: TColors.primaryColor)), WButton(onTap: () {}, label: "Pilih", size: WButtonSize.xs)],
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList()
                          .joinWidget(Const.gap(x: 4)),
                    ],
                  ),
                ),
                Const.gap(x: 4)
              ],
            ),
            Positioned(
              top: Const.parentMargin(x: 2),
              left: Const.parentMargin(),
              right: Const.parentMargin(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: TColors.baseWhite),
                      width: 35,
                      height: 35,
                      child: const Center(child: Icon(IconsaxPlusLinear.arrow_left_1)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: TColors.baseWhite),
                      width: 35,
                      height: 35,
                      child: const Center(child: Icon(IconsaxPlusLinear.heart)),
                    ),
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
