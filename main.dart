import 'mahasiswa.dart';
import 'dosen.dart';
import 'mataKuliah.dart';
import 'nilai.dart';
import 'dart:io';


//Main
void main() async {
  //data dosen
  var dosen1 = Dosen("Yaya Wihardi", "Laki-laki", "Bandung", "001201", "S2");
  var dosen2 = Dosen("Rasim", "Laki-laki", "Bandung", "001202", "S3");
  var dosen3 = Dosen("Rosa Ariani Sukamto", "Perempuan", "Bandung", "001203", "S2");
  var dosen4 = Dosen("Yudi Wibisono", "Laki-laki", "Bandung", "001204", "S3");
  var dosen5 = Dosen("Munir", "Laki-laki", "Bandung", "001205", "S3");

  //data nilai matkul
  final nilaiAndal = Nilai(12);
  final nilaiSO = Nilai(11.10);
  final nilaiDPBO = Nilai(12);
  final nilaiProvis = Nilai(12);
  final nilaiMetlit = Nilai(11.40);

  //data matkul
  var matkul1 = MataKuliah("IK237", "Analisis dan desain algoritma", 3, dosen1, nilaiAndal);
  var matkul2 = MataKuliah("IK250", "Sistem operasi", 3, dosen2, nilaiSO);
  var matkul3 = MataKuliah("IK290", "Desain dan pemrograman berorientasi objek", 3, dosen3, nilaiDPBO);
  var matkul4 = MataKuliah("IK300", "Pemrograman visual dan piranti bergerak", 3, dosen4, nilaiProvis);
  var matkul5 = MataKuliah("IK400", "Metodologi penelitian", 3, dosen5, nilaiMetlit);
  
  //list matkul
  List<MataKuliah> listmatkul = [matkul1, matkul2, matkul3, matkul4, matkul5];

  //data mahasiswa
  var aku = Mahasiswa("Wildan Hafizh Raffianshar", "Laki-laki", "Subang", "220231", listmatkul);

  //Tampilan --------------------------------
  //data mahasiswa
  print('Data Mahasiswa...');
  print('NIM            : ${aku.nim}');
  print('Nama           : ${aku.nama}');
  print('Jenis Kelamin  : ${aku.jenis_kelamin}');
  print('Kota Asal      : ${aku.kota_asal}');

  //data matkul dan nilainya
  print('');
  print('Mata Kuliah yang diambil beserta nilainya :');
  int jml_sks = 0;
  if (aku.mataKuliah != null) {
    int idx = 0;
    for (var matkul in aku.mataKuliah!) {
      idx+=1;
      stdout.write(' $idx. ${matkul.nama}');          //nama matkul
      for(int i=0; i<44-(matkul.nama).length; i++) {
        stdout.write(' ');
      }
      stdout.write(' (${matkul.sks} SKS)   ');        //sks matkul
      jml_sks += matkul.sks;
      stdout.write('${matkul.nilaiMatkul?.mutu}   ${matkul.nilaiMatkul?.grade}'); //nilai matkul mahasiswa
      print('');
    }
  } else {
    print('Tidak ada mata kuliah yang diambil.');
  }

  print('');
  print('');
  //menghitung nilai akhir
  print('Menghitung nilai akhir...');
  //menggunakan konsep async-await
  var nilaiAkhir = await aku.hitungNilaiAkhir();

  //Tampilkan nilai akhir
  print('NA Mutu   : $nilaiAkhir');
  print('Total SKS : $jml_sks');
  print('IP        : ${nilaiAkhir / jml_sks}');
}
