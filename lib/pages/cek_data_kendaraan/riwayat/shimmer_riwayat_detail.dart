import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerRiwayatDetail extends StatelessWidget {
  const ShimmerRiwayatDetail({super.key});

  Widget box({double height = 20, double width = double.infinity}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // ==========================
            // IDENTITAS KENDARAAN
            // ==========================
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(height: 18, width: 150),
                  const SizedBox(height: 10),
                  box(height: 15),
                  const SizedBox(height: 6),
                  box(height: 15),
                  const SizedBox(height: 6),
                  box(height: 15),
                ],
              ),
            ),

            // ==========================
            // PENDAFTARAN
            // ==========================
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(height: 18, width: 120),
                  const SizedBox(height: 10),
                  box(height: 15),
                  const SizedBox(height: 6),
                  box(height: 15),
                ],
              ),
            ),

            // ==========================
            // PEMERIKSAAN KENDARAAN
            // ==========================
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(height: 18, width: 160),
                  const SizedBox(height: 12),

                  // Prauji
                  box(height: 60),
                  const SizedBox(height: 10),

                  // Emisi
                  box(height: 60),
                  const SizedBox(height: 10),

                  // Pitlift
                  box(height: 60),
                  const SizedBox(height: 10),

                  // Lampu
                  box(height: 60),
                  const SizedBox(height: 10),

                  // Rem
                  box(height: 60),
                ],
              ),
            ),

            // ==========================
            // FOTO KENDARAAN
            // ==========================
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(height: 18, width: 160),
                  const SizedBox(height: 15),

                  // Row 1
                  Row(
                    children: [
                      Expanded(child: box(height: 100)),
                      const SizedBox(width: 10),
                      Expanded(child: box(height: 100)),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // Row 2
                  Row(
                    children: [
                      Expanded(child: box(height: 100)),
                      const SizedBox(width: 10),
                      Expanded(child: box(height: 100)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
