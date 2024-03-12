import 'nilai.dart';
import 'dosen.dart';

//Kelas mata kuliah
class MataKuliah {
  String _kode="";  //Kode matkul
  String _nama="";  //nama matkul
  int _sks=0;       //jumlah sks matkul
  Nilai? _nilaiMatkul;    //nilai matkul mahasiswa
  Dosen? _dosenPengempu;  //dosen pengempu matkul

  MataKuliah(String kode, String nama, int sks, Dosen dosenPengempu, Nilai nilaiMatkul) {
    this._kode=kode;
    this._nama=nama;
    this._sks=sks;
    this._nilaiMatkul=nilaiMatkul;
    this._dosenPengempu = dosenPengempu;
  }

  // Getter untuk mendapatkan kode mata kuliah
  String get kode => this._kode;

  // Setter untuk mengatur kode mata kuliah
  set kode(String value) {
    this._kode = value;
  }

  // Getter untuk mendapatkan nama mata kuliah
  String get nama => this._nama;

  // Setter untuk mengatur nama mata kuliah
  set nama(String value) {
    this._nama = value;
  }

  // Getter untuk mendapatkan jumlah SKS mata kuliah
  int get sks => this._sks;

  // Setter untuk mengatur jumlah SKS mata kuliah
  set sks(int value) {
    this._sks = value;
  }
  
  // Getter untuk mendapatkan jumlah nilaiMatkul mata kuliah
  Nilai? get nilaiMatkul => this._nilaiMatkul;

  // Setter untuk mengatur jumlah nilaiMatkul mata kuliah
  set nilaiMatkul(Nilai? value) {
    this._nilaiMatkul = value;
  }
  
  // Getter untuk mendapatkan jumlah dosenPengempu mata kuliah
  Dosen? get dosenPengempu => this._dosenPengempu;

  // Setter untuk mengatur jumlah dosenPengempu mata kuliah
  set dosenPengempu(Dosen? value) {
    this._dosenPengempu = value;
  }

  
}
