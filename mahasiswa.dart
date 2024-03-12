//Kelas Mahasiswa
import 'dart:async';
import 'human.dart';
import 'mataKuliah.dart';

//kelas mahasiswa anak dari kelas human
class Mahasiswa extends Human{
  String _nim=""; //NIM mahasiswa
  List<MataKuliah>? _mataKuliah;  //list object dari kelas matakuliah

  Mahasiswa( String nama, String jenis_kelamin, String kota_asal, String nim, List<MataKuliah> mataKuliah):
    super(nama, jenis_kelamin, kota_asal){
      this._nim = nim;
      this._mataKuliah = mataKuliah;
  }

  // Getter dan setter untuk NIP
  String get nim => this._nim;
  set nim(String value) {
    this._nim = value;
  }

  // Getter dan setter untuk pendidikan terakhir
  List<MataKuliah>? get mataKuliah => this._mataKuliah;
  set mataKuliah(List<MataKuliah>? value) {
    this._mataKuliah = value;
  }


  // Metode asynchronous untuk menghitung nilai akhir
  Future<double> hitungNilaiAkhir() async {
    // Simulasi proses asynchronous
    await Future.delayed(Duration(seconds: 2));

    if (this._mataKuliah!.isEmpty) return 0.0;

    double totalNilai = 0.0;
    for (var mataKuliah in this._mataKuliah!) {
      double? nilai = mataKuliah.nilaiMatkul?.mutu;
      if (nilai != null) {
        totalNilai += nilai;
      }
    }
    return totalNilai;
  }
}