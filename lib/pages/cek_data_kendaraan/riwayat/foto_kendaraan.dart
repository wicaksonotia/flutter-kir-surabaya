import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/utils/containers/box_container.dart';
import 'package:surabaya/utils/sizes.dart';

class FotoKendaraanRiwayat extends StatelessWidget {
  const FotoKendaraanRiwayat({super.key, required this.controller});

  final DetailRiwayatController controller;

  @override
  Widget build(BuildContext context) {
    return BoxContainer(
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
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
          ),
          // const TextHeader(
          //   nama: 'Dokumenasi Foto Kendaraan',
          // ),
          const Gap(10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .43,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: controller.resultData.value.imgDepan == null ||
                            controller.resultData.value.imgDepan == ""
                        ? const AssetImage('assets/images/no_image.png')
                        : MemoryImage(
                            const Base64Decoder()
                                .convert(controller.resultData.value.imgDepan!),
                          ),
                    fit: controller.resultData.value.imgDepan == null ||
                            controller.resultData.value.imgDepan == ""
                        ? BoxFit.fitHeight
                        : BoxFit.cover,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                width: MediaQuery.of(context).size.width * .42,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: controller.resultData.value.imgBelakang == null ||
                            controller.resultData.value.imgBelakang == ""
                        ? const AssetImage('assets/images/no_image.png')
                        : MemoryImage(
                            const Base64Decoder().convert(
                                controller.resultData.value.imgBelakang!),
                          ),
                    fit: controller.resultData.value.imgBelakang == null ||
                            controller.resultData.value.imgBelakang == ""
                        ? BoxFit.fitHeight
                        : BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .43,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: controller.resultData.value.imgKanan == null ||
                            controller.resultData.value.imgKanan == ""
                        ? const AssetImage('assets/images/no_image.png')
                        : MemoryImage(
                            const Base64Decoder()
                                .convert(controller.resultData.value.imgKanan!),
                          ),
                    fit: controller.resultData.value.imgKanan == null ||
                            controller.resultData.value.imgKanan == ""
                        ? BoxFit.fitHeight
                        : BoxFit.cover,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                width: MediaQuery.of(context).size.width * .42,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: controller.resultData.value.imgKiri == null ||
                            controller.resultData.value.imgKiri == ""
                        ? const AssetImage('assets/images/no_image.png')
                        : MemoryImage(
                            const Base64Decoder()
                                .convert(controller.resultData.value.imgKiri!),
                          ),
                    fit: controller.resultData.value.imgKiri == null ||
                            controller.resultData.value.imgKiri == ""
                        ? BoxFit.fitHeight
                        : BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
