import 'package:flutter/material.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';

class Pitlift extends StatelessWidget {
  const Pitlift({
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
            TextLeft(nama: 'Bawah Kendaraan'),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Rangka dan Landasan'),
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
            TextLeft(nama: 'Sistem Kemudi'),
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
            TextLeft(nama: 'Sistem Suspensi'),
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
            TextLeft(nama: 'Sistem Rem'),
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
            TextLeft(nama: 'Mesin'),
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
            TextLeft(nama: 'Sistem Penerus Daya'),
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
            TextLeft(nama: 'Sistem Pembuangan'),
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
            TextLeft(nama: 'Sistem Bahan Bakar'),
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
            TextLeft(nama: 'Sistem Pendingin'),
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
