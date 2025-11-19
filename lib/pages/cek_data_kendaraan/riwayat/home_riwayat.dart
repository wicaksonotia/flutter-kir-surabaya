import 'package:flutter/material.dart';
import 'package:surabaya/utils/containers/app_bar_header.dart';
import 'package:surabaya/pages/cek_data_kendaraan/background_header.dart';
import 'package:surabaya/pages/cek_data_kendaraan/riwayat/result_riwayat.dart';

class HomeRiwayat extends StatelessWidget {
  const HomeRiwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarHeader(
            header: 'Riwayat Uji Kendaraan',
          ),
        ),
        backgroundColor: Colors.white,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            children: [
              const BackgroundHeader(
                menu: 'riwayat',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .79,
                child: ResultRiwayat(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
