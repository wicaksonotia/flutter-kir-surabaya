import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/detail_kendaraan_controller.dart';
// import 'package:surabaya/pages/cek_data_kendaraan/cek_data/foto_kendaraan.dart';
import 'package:surabaya/pages/cek_data_kendaraan/cek_data/shimmer_detail_kendaraan.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_header.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_right.dart';
import 'package:surabaya/utils/containers/box_container.dart';

class ResultCekData extends StatelessWidget {
  const ResultCekData({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailKendaraanController controller =
        Get.put(DetailKendaraanController());

    return Obx(() {
      if (controller.isLoadingDetailKendaraan.value) {
        return const ShimmerDetailKendaraan();
      } else {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // ==========================
              // IDENTITAS KENDARAAN
              // ==========================
              BoxContainer(
                padding: const EdgeInsets.all(10),
                radius: 5,
                showBorder: true,
                borderColor: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextHeader(
                      nama: 'Identitas Kendaraan',
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const TextLeft(nama: 'No SRUT'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.noSrut ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'No Uji'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.noUji ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'No Kendaraan'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.noKendaraan ?? '-',
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLeft(nama: 'Jenis Kendaraan'),
                        const Spacer(),
                        SizedBox(
                          width: 200,
                          child: TextRight(
                            nama:
                                controller.resultData.value.namaKomersil ?? '-',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Merk'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.merk ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Tipe'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.tipe ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'No. Chasis'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.noChasis ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'No. Mesin'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.noMesin ?? '-',
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // ==========================
              // DIMENSI KENDARAAN
              // ==========================
              const Gap(10),
              BoxContainer(
                padding: const EdgeInsets.all(10),
                radius: 5,
                showBorder: true,
                borderColor: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextHeader(
                      nama: 'Dimensi Utama',
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const TextLeft(nama: 'Panjang'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.panjang ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Lebar'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.lebar ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Tinggi'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.tinggi ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'ROH'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.roh ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'FOH'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.foh ?? '-',
                        )
                      ],
                    ),
                    const Gap(10),
                    const TextHeader(
                      nama: 'Jarak Sumbu',
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'I-II'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.jarakSumbu1 ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'II-III'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.jarakSumbu2 ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'III-IV'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.jarakSumbu3 ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'IV-V'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.jarakSumbu4 ?? '-',
                        )
                      ],
                    ),
                    const Gap(10),
                    const TextHeader(
                      nama: 'Dimensi Bak Muatan',
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        const TextLeft(nama: 'Panjang'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.dimpanjang ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Lebar'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.dimlebar ?? '-',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TextLeft(nama: 'Tinggi'),
                        const Spacer(),
                        TextRight(
                          nama: controller.resultData.value.dimtinggi ?? '-',
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // ==========================
              // FOTO KENDARAAN
              // ==========================
              // const Gap(10),
              // FotoKendaraan(controller: controller),
            ],
          ),
        );
      }
    });
  }
}
