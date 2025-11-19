import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/detail_kendaraan_controller.dart';
import 'package:surabaya/controllers/hasil_uji_controller.dart';
import 'package:surabaya/controllers/riwayat_kendaraan_controller.dart';
import 'package:surabaya/controllers/riwayat_pendaftaran_controller.dart';
import 'package:surabaya/controllers/search_bar_controller.dart';

class SearchBarContainer extends StatelessWidget {
  final String menu;
  SearchBarContainer({super.key, required this.menu});
  final SearchBarController searchBarController =
      Get.find<SearchBarController>();
  final DetailKendaraanController detailKendaraanController =
      Get.put(DetailKendaraanController());
  final HasilUjiController hasilUjiController = Get.put(HasilUjiController());
  final RiwayatKendaraanController riwayatKendaraanController =
      Get.put(RiwayatKendaraanController());
  final RiwayatPendaftaranController riwayatPendaftaranController =
      Get.put(RiwayatPendaftaranController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller:
                        searchBarController.searchTextFieldNoUjiController,
                    decoration: InputDecoration(
                      hintText: "SB 123456 K",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller:
                        searchBarController.searchTextFieldNoRangkaController,
                    decoration: InputDecoration(
                      hintText: "17109",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (menu == 'cekdata') {
                        detailKendaraanController.getDetailDataKendaraan();
                      }
                      if (menu == 'hasiluji') {
                        hasilUjiController.getHasilUjiKendaraan();
                      }
                      if (menu == 'riwayat') {
                        riwayatKendaraanController.getDataRiwayat();
                      }
                    },
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
