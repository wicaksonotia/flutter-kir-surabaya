import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDetailKendaraan extends StatelessWidget {
  const ShimmerDetailKendaraan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER
            Container(
              height: 20,
              width: 150,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),

            // BARIS-BARIS
            for (int i = 0; i < 7; i++) ...[
              Row(
                children: [
                  Container(
                    height: 16,
                    width: 120,
                    color: Colors.grey.shade300,
                  ),
                  const Spacer(),
                  Container(
                    height: 16,
                    width: 140,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],

            const SizedBox(height: 20),

            // HEADER FOTO
            Container(
              height: 20,
              width: 200,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),

            // FOTO 2 ATAS
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  height: 100,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(width: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  height: 100,
                  color: Colors.grey.shade300,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // FOTO 2 BAWAH
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  height: 100,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(width: 10),
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  height: 100,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
