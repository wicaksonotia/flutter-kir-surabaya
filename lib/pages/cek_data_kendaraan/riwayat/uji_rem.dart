import 'package:flutter/material.dart';
import 'package:surabaya/controllers/detail_riwayat_controller.dart';
import 'package:surabaya/pages/cek_data_kendaraan/text_left.dart';

class Rem extends StatelessWidget {
  Rem({
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
            TextLeft(nama: 'Rem'),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_right,
              color: Colors.grey,
            ),
            TextLeft(nama: 'Gaya Pengereman Sumbu I'),
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
            TextLeft(nama: 'Selisih Gaya Pengereman Sumbu I'),
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
            TextLeft(nama: 'Gaya Pengereman Sumbu II'),
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
            TextLeft(nama: 'Selisih Gaya Pengereman Sumbu II'),
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
            TextLeft(nama: 'Gaya Pengereman Sumbu III'),
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
            TextLeft(nama: 'Selisih Gaya Pengereman Sumbu III'),
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
            TextLeft(nama: 'Gaya Pengereman Sumbu IV'),
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
            TextLeft(nama: 'Selisih Gaya Pengereman Sumbu III'),
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
