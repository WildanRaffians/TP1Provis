import 'human.dart';

//Kelas dosen anak dari kelas Human
class Dosen extends Human {
  String _nip="";           //NIP dosen
  String _pend_terakhir=""; //pendidikan terakhir dosen

  Dosen( String nama, String jenis_kelamin, String kota_asal, String nip, String pend_terakhir):
    super(nama, jenis_kelamin, kota_asal){
      this._nip = nip;
      this._pend_terakhir = pend_terakhir;
  }


  // Getter dan setter untuk NIP
  String get nip => this._nip;
  set nip(String value) {
    this._nip = value;
  }

  // Getter dan setter untuk pendidikan terakhir
  String get pend_terakhir => this._pend_terakhir;
  set pend_terakhir(String value) {
    this._pend_terakhir = value;
  }
}
