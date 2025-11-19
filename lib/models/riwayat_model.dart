class RiwayatKendaraanModel {
  String? status;
  String? statusMessage;
  List<DataRiwayat>? data;

  RiwayatKendaraanModel({this.status, this.statusMessage, this.data});

  RiwayatKendaraanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusMessage = json['status_message'];
    if (json['data'] != null) {
      data = <DataRiwayat>[];
      json['data'].forEach((v) {
        data!.add(DataRiwayat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['status_message'] = statusMessage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataRiwayat {
  String? noUji;
  String? noKendaraan;
  String? tglUji;
  String? tglmati;
  String? nmUji;
  int? idUji;
  int? idHasilUji;
  String? catatan;
  String? statusLulus;

  DataRiwayat({
    this.noUji,
    this.noKendaraan,
    this.tglUji,
    this.tglmati,
    this.nmUji,
    this.idUji,
    this.idHasilUji,
    this.catatan,
    this.statusLulus,
  });

  DataRiwayat.fromJson(Map<String, dynamic> json) {
    noUji = json['no_uji'];
    noKendaraan = json['no_kendaraan'];
    tglUji = json['tgl_uji'];
    tglmati = json['tglmati'];
    nmUji = json['nm_uji'];
    idUji = json['id_uji'];
    idHasilUji = json['id_hasil_uji'];
    catatan = json['catatan'];
    statusLulus = json['status_lulus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no_uji'] = noUji;
    data['no_kendaraan'] = noKendaraan;
    data['tgl_uji'] = tglUji;
    data['tglmati'] = tglmati;
    data['nm_uji'] = nmUji;
    data['id_uji'] = idUji;
    data['id_hasil_uji'] = idHasilUji;
    data['catatan'] = catatan;
    data['status_lulus'] = statusLulus;
    return data;
  }
}
