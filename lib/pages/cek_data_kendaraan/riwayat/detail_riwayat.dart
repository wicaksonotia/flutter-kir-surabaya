import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/identitas_kendaraan.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/pendaftaran.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/shimmer_riwayat_detail.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_emisi.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_lampu.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_lampu_tidak_lulus.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_pitlift.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_pitlift_tidak_lulus.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_prauji.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_prauji_tidak_lulus.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_rem.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/uji_rem_tidak_lulus.dart';
import 'package:surabaya/pages/persyaratan/background_header.dart';
import 'package:surabaya/utils/containers/box_container.dart';
import 'package:surabaya/utils/sizes.dart';

class DetailRiwayat extends StatelessWidget {
  DetailRiwayat({super.key});
  final DetailRiwayatController controller = Get.put(DetailRiwayatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text(
            'Detail Riwayat',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          children: [
            const BackgroundHeader(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .85,
              child: Obx(
                () {
                  if (controller.isLoading.value) {
                    return const ShimmerRiwayatDetail();
                  } else {
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          // ==========================
                          // IDENTITAS KENDARAAN
                          // ==========================
                          IdentitasKendaraan(controller: controller),

                          // ==========================
                          // PENDAFTARAN
                          // ==========================
                          const Gap(10),
                          Pendaftaran(controller: controller),

                          // ==========================
                          // PEMERIKSAAN KENDARAAN
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
                                RichText(
                                  text: const TextSpan(
                                    text: 'Pemeriksaan Kendaraan ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: MySizes.fontSizeMd,
                                        color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),

                                // PRAUJI
                                const Gap(10),
                                Builder(
                                  builder: (context) {
                                    if (controller
                                        .resultData.value.lulusPrauji!) {
                                      return Prauji(controller: controller);
                                    } else {
                                      return PraujiTidakLulus(
                                          controller: controller);
                                    }
                                  },
                                ),

                                // EMISI
                                const Gap(10),
                                Emisi(controller: controller),

                                // PITLIFT
                                const Gap(10),
                                Builder(
                                  builder: (context) {
                                    if (controller
                                        .resultData.value.lulusPitlift!) {
                                      return Pitlift(controller: controller);
                                    }
                                    return PitliftTidakLulus(
                                        controller: controller);
                                  },
                                ),

                                // LAMPU
                                const Gap(10),
                                Builder(
                                  builder: (context) {
                                    if (controller
                                        .resultData.value.lulusLampu!) {
                                      return Lampu(controller: controller);
                                    }
                                    return LampuTidakLulus(
                                        controller: controller);
                                  },
                                ),

                                // REM
                                const Gap(10),
                                Builder(
                                  builder: (context) {
                                    if (controller
                                        .resultData.value.lulusBreak!) {
                                      return Rem(controller: controller);
                                    }
                                    return RemTidakLulus(
                                        controller: controller);
                                  },
                                ),
                              ],
                            ),
                          ),

                          // ==========================
                          // FOTO KENDARAAN
                          // ==========================
                          // const Gap(10),
                          // FotoKendaraanRiwayat(controller: controller),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
