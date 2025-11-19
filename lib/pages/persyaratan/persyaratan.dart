import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:surabaya/controllers/jenis_uji_controller.dart';
import 'package:surabaya/pages/persyaratan/shimmer_persyaratan.dart';
import 'package:surabaya/utils/containers/app_bar_header.dart';
import 'package:surabaya/pages/persyaratan/background_header.dart';
import 'package:surabaya/pages/persyaratan/card_categories.dart';

class PersyaratanPage extends StatefulWidget {
  const PersyaratanPage({super.key});

  @override
  State<PersyaratanPage> createState() => _PersyaratanPageState();
}

class _PersyaratanPageState extends State<PersyaratanPage> {
  final JenisUjiController jenisUjiController = Get.put(JenisUjiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarHeader(
          header: 'Persyaratan Uji Kendaraan',
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
              height: MediaQuery.of(context).size.height * .79,
              child: Obx(
                () => jenisUjiController.isLoading.value
                    ? const ShimmerPersyaratan()
                    : Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: AnimationLimiter(
                          child: ListView.builder(
                            itemCount: jenisUjiController.jenisUjiItem.length,
                            itemBuilder: (BuildContext context, int index) {
                              String hexString =
                                  jenisUjiController.jenisUjiItem[index].warna!;
                              return AnimationConfiguration.staggeredList(
                                position: index,
                                duration: const Duration(milliseconds: 375),
                                child: SlideAnimation(
                                  verticalOffset: 50.0,
                                  child: FadeInAnimation(
                                    child: CardCategories(
                                        hexString: hexString,
                                        jenisUjiController: jenisUjiController,
                                        index: index),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
