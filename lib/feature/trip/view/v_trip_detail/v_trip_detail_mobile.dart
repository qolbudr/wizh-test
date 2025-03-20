import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/extension.dart';
import 'package:wizh_test/core/widget/w_button.dart';
import 'package:wizh_test/feature/main/widget/w_trip_card.dart';
import 'package:wizh_test/feature/trip/controller/c_trip_detail/c_trip_detail.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_common_promo.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_facilities.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_general_information.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_header.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_image_carousel.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_package.dart';
import 'package:wizh_test/feature/trip/widget/w_trip_detail_review.dart';
import 'package:wizh_test/gen/assets.gen.dart';

class VTripDetailMobile extends StatelessWidget {
  const VTripDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final o = Get.put(CTripDetail());
    return Obx(
      () => Scaffold(
        body: o.state.status.isLoading
            ? const Center(
                child: SpinKitCubeGrid(
                  color: TColors.primaryColor,
                ),
              )
            : Stack(
                children: [
                  ListView(
                    controller: o.scrollController,
                    padding: EdgeInsets.zero,
                    children: [
                      WTripDetailImageCarousel(tabController: o.tabController, tabIndex: o.state.tabIndex),
                      Const.gap(x: 4),
                      const WTripDetailGeneralInformation(),
                      Const.gap(x: 4),
                      const WTripDetailCommonPromo(),
                      Container(
                        padding: EdgeInsets.all(Const.parentMargin()),
                        child: Container(
                          padding: EdgeInsets.all(Const.parentMargin()),
                          decoration: BoxDecoration(
                            color: TColors.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Info Penting & Highlight", style: TText.bodyMSemiBold()),
                              Const.gap(x: 2),
                              Text(
                                "Villa Asri Makmur Sekali adalah villa yang berlokasi di Puncak, Bogor. Villa ini memiliki fasilitas yang lengkap dan nyaman untuk keluarga. Dengan harga yang terjangkau, villa ini memiliki rating 4.5/5 dari 942 review.",
                                style: TText.bodySRegular(color: TColors.neutral60),
                              ),
                            ],
                          ),
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
                      const WTripDetailPackage(),
                      const WTripDetailPackage(),
                      Const.gap(x: 4),
                      Container(color: TColors.primaryColor.withOpacity(0.1), width: double.infinity, height: 8),
                      const WTripDetailReview(),
                      Container(color: TColors.primaryColor.withOpacity(0.1), width: double.infinity, height: 8),
                      const WTripDetailFacilities(),
                      Container(color: TColors.primaryColor.withOpacity(0.1), width: double.infinity, height: 8),
                      Container(
                        padding: EdgeInsets.all(Const.parentMargin()),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deskripsi", style: TText.bodyBold()),
                            Const.gap(x: 4),
                            Text(
                              "Villa Asri Makmur Sekali adalah villa yang berlokasi di Puncak, Bogor. Villa ini memiliki fasilitas yang lengkap dan nyaman untuk keluarga. Dengan harga yang terjangkau, villa ini memiliki rating 4.5/5 dari 942 review.",
                              style: TText.bodySRegular(color: TColors.neutral60),
                            ),
                            Const.gap(x: 4),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Assets.images.villa2.image(width: double.infinity, fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Container(color: TColors.primaryColor.withOpacity(0.1), width: double.infinity, height: 8),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Const.gap(x: 4),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                              child: Text("Mungkin Kamu Juga Suka", style: TText.bodyBold()),
                            ),
                            Const.gap(x: 4),
                            SizedBox(
                              height: 300,
                              child: ListView(
                                padding: EdgeInsets.symmetric(horizontal: Const.parentMargin()),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...o.state.recommendation.map(
                                    (item) => WTripCard(item: item),
                                  ),
                                ].joinWidget(Const.gap(x: 4)),
                              ),
                            ),
                            Const.gap(x: 4),
                          ],
                        ),
                      ),
                      Const.gap(x: 30)
                    ],
                  ),
                  WTripDetailHeader(opacity: o.state.headerOpacity),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: TColors.baseWhite,
                        boxShadow: [
                          BoxShadow(
                            color: TColors.neutral20,
                            offset: Offset(0, -2),
                            blurRadius: 4,
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(Const.parentMargin()),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mulai dari", style: TText.bodyMMedium()),
                                Text(493000.toCurrency(), style: TText.subHeadingBold(color: TColors.primaryColor)),
                              ],
                            ),
                          ),
                          WButton(
                            onTap: () => o.scrollController.animateTo(765, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut),
                            label: "Pilih Tiket",
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
