import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/search_bar_controller.dart';
import 'package:surabaya/models/riwayat_model.dart';
import 'package:surabaya/networks/api_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RiwayatKendaraanController extends GetxController {
  final searchTextFieldController = Get.find<SearchBarController>();
  var isLoadingRiwayat = true.obs;
  var resultData = <DataRiwayat>[].obs;
  var responseMessage = 'error'.obs;
  String? valueSearch = '';
  bool? isLogin = false;

  @override
  void onInit() {
    super.onInit();
    cekIsLogin();
  }

  void getDataRiwayat() async {
    valueSearch =
        "${searchTextFieldController.searchTextFieldNoUjiController.text}/${searchTextFieldController.searchTextFieldNoRangkaController.text}";
    getData(valueSearch);
  }

  void getData(valueSearch) async {
    try {
      var result = await RemoteDataSource.getRiwayatKendaraan(valueSearch!);
      if (result!.status! == 'ok') {
        resultData.assignAll(result.data!);
      } else {
        Get.snackbar('Notification', 'Data kendaraan belum terdaftar.',
            icon: const Icon(Icons.error), snackPosition: SnackPosition.BOTTOM);
      }
      // responseMessage.value = result!.status!;
      // resultData.assignAll(result.data!);
    } catch (error) {
      Get.snackbar('Error', "Data kendaraan belum terdaftar.",
          icon: const Icon(Icons.error), snackPosition: SnackPosition.BOTTOM);
      isLoadingRiwayat(false);
    } finally {
      isLoadingRiwayat(false);
    }
  }

  void cekIsLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = prefs.getBool('statusLogin');
    if (isLogin == true) {
      valueSearch = prefs.getString('username');
      getData(valueSearch);
    }
  }
}
