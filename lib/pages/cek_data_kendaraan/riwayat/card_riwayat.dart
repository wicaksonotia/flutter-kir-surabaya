import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/controllers/riwayat_kendaraan_controller.dart';
import 'package:surabaya/utils/colors.dart';
import 'package:surabaya/utils/containers/box_container.dart';
import 'package:surabaya/utils/sizes.dart';

class CardRiwayat extends StatelessWidget {
  CardRiwayat({
    super.key,
    required this.controller,
    required this.index,
  });

  final RiwayatKendaraanController controller;
  final int index;
  final DetailRiwayatController detailRiwayatController =
      Get.put(DetailRiwayatController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          final id = controller.resultData[index].idHasilUji;

          // Cek jika idHasilUji TIDAK dalam list (3, 5, 6)
          if (id != null && ![3, 5, 6].contains(id)) {
            detailRiwayatController.getDetailDataKendaraan(id);
            Get.toNamed('/detailriwayat');
          } else {
            Get.snackbar(
              'Info',
              'Data tidak dapat dibuka.',
              snackPosition: SnackPosition.BOTTOM,
              icon: const Icon(Icons.info),
            );
          }
        },
        child: BoxContainer(
          margin: const EdgeInsets.only(bottom: 10),
          height: 100,
          // padding: const EdgeInsets.all(10),
          radius: 5,
          shadow: true,
          showBorder: true,
          borderColor: Colors.grey.shade200,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(
                    color: controller.resultData[index].statusLulus ==
                            'TIDAK LULUS'
                        ? MyColors.red
                        : MyColors.primary,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      controller.resultData[index].statusLulus!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: MySizes.fontSizeXsm,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.resultData[index].nmUji ?? '-',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MySizes.fontSizeLg),
                          ),
                          if ([3, 5]
                              .contains(controller.resultData[index].idUji))
                            Text(
                              controller.resultData[index].catatan ?? '-',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: MySizes.fontSizeSm,
                              ),
                            ),
                          Text(
                            controller.resultData[index].tglUji!,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: MyColors.primary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
