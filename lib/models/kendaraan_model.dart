class DetailKendaraanModel {
  String? status;
  String? message;
  DataDetailKendaraan? data;

  DetailKendaraanModel({this.status, this.message, this.data});

  DetailKendaraanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null
        ? DataDetailKendaraan.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class DataDetailKendaraan {
  String? noSrut;
  String? noUji;
  String? noKendaraan;
  String? merk;
  String? tipe;
  String? noChasis;
  String? noMesin;
  String? pemilik;
  String? jnsKend;
  String? matiUji;
  String? namaKomersil;
  String? jenisKaroseri;
  String? bahanUtama;
  String? panjang;
  String? lebar;
  String? tinggi;
  String? dimpanjang;
  String? dimlebar;
  String? dimtinggi;
  String? jbb;
  String? orang;
  String? barang;
  String? sb1;
  String? sb2;
  String? sb3;
  String? sb4;
  String? sb5;
  String? totalSb;
  String? jbi;
  String? mst;
  String? roh;
  String? foh;
  String? jarakSumbu1;
  String? jarakSumbu2;
  String? jarakSumbu3;
  String? jarakSumbu4;
  String? kondisi;
  String? imgDepan;
  String? imgBelakang;
  String? imgKanan;
  String? imgKiri;

  DataDetailKendaraan(
      {this.noSrut,
      this.noUji,
      this.noKendaraan,
      this.merk,
      this.tipe,
      this.noChasis,
      this.noMesin,
      this.pemilik,
      this.jnsKend,
      this.matiUji,
      this.namaKomersil,
      this.jenisKaroseri,
      this.bahanUtama,
      this.panjang,
      this.lebar,
      this.tinggi,
      this.dimpanjang,
      this.dimlebar,
      this.dimtinggi,
      this.jbb,
      this.orang,
      this.barang,
      this.sb1,
      this.sb2,
      this.sb3,
      this.sb4,
      this.sb5,
      this.totalSb,
      this.jbi,
      this.mst,
      this.roh,
      this.foh,
      this.jarakSumbu1,
      this.jarakSumbu2,
      this.jarakSumbu3,
      this.jarakSumbu4,
      this.kondisi,
      this.imgDepan,
      this.imgBelakang,
      this.imgKanan,
      this.imgKiri});

  DataDetailKendaraan.fromJson(Map<String, dynamic> json) {
    noSrut = json['no_srut'];
    noUji = json['no_uji'];
    noKendaraan = json['no_kendaraan'];
    merk = json['merk'];
    tipe = json['tipe'];
    noChasis = json['no_chasis'];
    noMesin = json['no_mesin'];
    pemilik = json['pemilik'];
    jnsKend = json['jns_kend'];
    matiUji = json['mati_uji'];
    namaKomersil = json['nama_komersil'];
    jenisKaroseri = json['jenis_karoseri'];
    bahanUtama = json['bahan_utama'];
    panjang = json['panjang'];
    lebar = json['lebar'];
    tinggi = json['tinggi'];
    dimpanjang = json['dimpanjang'];
    dimlebar = json['dimlebar'];
    dimtinggi = json['dimtinggi'];
    jbb = json['jbb'];
    orang = json['orang'];
    barang = json['barang'];
    sb1 = json['sb1'];
    sb2 = json['sb2'];
    sb3 = json['sb3'];
    sb4 = json['sb4'];
    sb5 = json['sb5'];
    totalSb = json['total_sb'];
    jbi = json['jbi'];
    mst = json['mst'];
    roh = json['roh'];
    foh = json['foh'];
    jarakSumbu1 = json['jarak_sumbu_1'];
    jarakSumbu2 = json['jarak_sumbu_2'];
    jarakSumbu3 = json['jarak_sumbu_3'];
    jarakSumbu4 = json['jarak_sumbu_4'];
    kondisi = json['kondisi'];
    imgDepan = json['img_depan'];
    imgBelakang = json['img_belakang'];
    imgKanan = json['img_kanan'];
    imgKiri = json['img_kiri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no_srut'] = noSrut;
    data['no_uji'] = noUji;
    data['no_kendaraan'] = noKendaraan;
    data['merk'] = merk;
    data['tipe'] = tipe;
    data['no_chasis'] = noChasis;
    data['no_mesin'] = noMesin;
    data['pemilik'] = pemilik;
    data['jns_kend'] = jnsKend;
    data['mati_uji'] = matiUji;
    data['nama_komersil'] = namaKomersil;
    data['jenis_karoseri'] = jenisKaroseri;
    data['bahan_utama'] = bahanUtama;
    data['panjang'] = panjang;
    data['lebar'] = lebar;
    data['tinggi'] = tinggi;
    data['dimpanjang'] = dimpanjang;
    data['dimlebar'] = dimlebar;
    data['dimtinggi'] = dimtinggi;
    data['jbb'] = jbb;
    data['orang'] = orang;
    data['barang'] = barang;
    data['sb1'] = sb1;
    data['sb2'] = sb2;
    data['sb3'] = sb3;
    data['sb4'] = sb4;
    data['sb5'] = sb5;
    data['total_sb'] = totalSb;
    data['jbi'] = jbi;
    data['mst'] = mst;
    data['roh'] = roh;
    data['foh'] = foh;
    data['jarak_sumbu_1'] = jarakSumbu1;
    data['jarak_sumbu_2'] = jarakSumbu2;
    data['jarak_sumbu_3'] = jarakSumbu3;
    data['jarak_sumbu_4'] = jarakSumbu4;
    data['kondisi'] = kondisi;
    data['img_depan'] = imgDepan;
    data['img_belakang'] = imgBelakang;
    data['img_kanan'] = imgKanan;
    data['img_kiri'] = imgKiri;
    return data;
  }
}
