import 'package:flutter/material.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';

class Prauji extends StatelessWidget {
  const Prauji({
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
            TextLeft(nama: 'Prauji'),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Identitas Kendaraan'),
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
            TextLeft(nama: 'Sistem Penerangan'),
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
            TextLeft(nama: 'Rumah dan Body'),
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
            TextLeft(nama: 'Roda-roda'),
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
            TextLeft(nama: 'Dimensi'),
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
            TextLeft(nama: 'Peralatan dan Perlengkapan'),
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
