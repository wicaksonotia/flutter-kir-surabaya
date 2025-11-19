import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/models/berita_model.dart';
import 'package:surabaya/networks/api_request.dart';

class BeritaController extends GetxController {
  var resultData = <BeritaModel>[].obs;
  var resultDataAll = <BeritaModel>[].obs;
  var isLoading = true.obs;
  var isLoadingAll = true.obs;

  void fetchData() async {
    try {
      isLoading(true);
      var result = await RemoteDataSource.getBerita();

      if (result != null) {
        resultData.assignAll(result.take(4).toList());
      }
    } catch (error) {
      Get.snackbar(
        'Error',
        "Silakan cek koneksi internet anda.",
        icon: const Icon(Icons.error),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading(false);
    }
  }

  void fetchDataAll() async {
    try {
      var result = await RemoteDataSource.getBerita();

      if (result != null) {
        resultDataAll.assignAll(result);
      }
    } catch (error) {
      Get.snackbar(
        'Error',
        "Silakan cek koneksi internet anda.",
        icon: const Icon(Icons.error),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingAll(false);
    }
  }
}
