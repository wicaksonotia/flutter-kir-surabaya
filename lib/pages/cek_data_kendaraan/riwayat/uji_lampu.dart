import 'package:flutter/material.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';

class Lampu extends StatelessWidget {
  const Lampu({
    super.key,
    required this.controller,
  });

  final DetailRiwayatController controller;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            TextLeft(nama: 'Lampu'),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Kuat Pancar Lampu Utama Kanan'),
            Spacer(),
            Icon(
              Icons.check,
              color: Colors.lightGreen,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Sudut Penyimpangan Kanan'),
            Spacer(),
            Icon(
              Icons.check,
              color: Colors.lightGreen,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Kuat Pancar Lampu Utama Kiri'),
            Spacer(),
            Icon(
              Icons.check,
              color: Colors.lightGreen,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Sudut Penyimpangan Kiri'),
            Spacer(),
            Icon(
              Icons.check,
              color: Colors.lightGreen,
            ),
          ],
        ),
      ],
    );
  }
}
