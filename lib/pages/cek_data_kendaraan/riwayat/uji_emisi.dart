import 'package:flutter/material.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';

class Emisi extends StatelessWidget {
  const Emisi({
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
            TextLeft(nama: 'Emisi'),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Diesel'),
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
            TextLeft(nama: 'Mesin HC'),
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
            TextLeft(nama: 'Mesin CO'),
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
