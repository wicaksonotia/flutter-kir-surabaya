import 'package:get/get.dart';
import 'package:surabaya/models/jenis_uji_model.dart';
import 'package:surabaya/models/persyaratan_model.dart';
import 'package:surabaya/networks/api_request.dart';

class JenisUjiController extends GetxController {
  var jenisUjiItem = <JenisUjiModel>[].obs;
  var isLoading = true.obs;
  var jenisUji = 'UJI PERTAMA'.obs;
  var persyaratan = <PersyaratanModel>[].obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var result = await RemoteDataSource.getJenisUji();
      if (result != null) {
        jenisUjiItem.assignAll(result);
      }
    } finally {
      isLoading(false);
    }
  }
}
