import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/berita_controller.dart';
import 'package:surabaya/pages/informasi/berita.dart';
import 'package:surabaya/utils/containers/app_bar_header.dart';
import 'package:surabaya/pages/persyaratan/background_header.dart';

class InformasiPage extends StatefulWidget {
  const InformasiPage({super.key});

  @override
  State<InformasiPage> createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
  final BeritaController beritaController = Get.put(BeritaController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    beritaController.fetchDataAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarHeader(
          header: 'Informasi',
        ),
      ),
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          children: [
            const BackgroundHeader(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .85,
              child: Obx(
                () => beritaController.isLoading.value
                    ? Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Berita(beritaController: beritaController),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
