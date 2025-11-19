import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/search_bar_controller.dart';
import 'package:surabaya/models/kendaraan_model.dart';
import 'package:surabaya/networks/api_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailKendaraanController extends GetxController {
  final searchTextFieldController = Get.find<SearchBarController>();
  var isLoadingDetailKendaraan = false.obs;
  var resultData = DataDetailKendaraan().obs;
  String? valueSearch = '';
  bool? isLogin = false;

  @override
  void onInit() {
    super.onInit();
    cekIsLogin();
  }

  void getDetailDataKendaraan() async {
    valueSearch =
        "${searchTextFieldController.searchTextFieldNoUjiController.text}/${searchTextFieldController.searchTextFieldNoRangkaController.text}";
    getData(valueSearch);
  }

  void getData(valueSearch) async {
    try {
      isLoadingDetailKendaraan(true);
      var result = await RemoteDataSource.getDetailKendaraan(valueSearch!);
      // print(result.toJson());
      if (result!.status == 'ok') {
        resultData.value = result.data!;
      } else if (result.status == 'error') {
        Get.snackbar('Notification', 'Data kendaraan belum terdaftar.',
            icon: const Icon(Icons.error), snackPosition: SnackPosition.BOTTOM);
      }
    } catch (error) {
      Get.snackbar('Error', "Data kendaraan belum terdaftar.",
          icon: const Icon(Icons.error), snackPosition: SnackPosition.BOTTOM);
      isLoadingDetailKendaraan(false);
    } finally {
      isLoadingDetailKendaraan(false);
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
