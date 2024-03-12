//Kelas Human
class Human {
  String _nama="";          //nama
  String _jenis_kelamin=""; //jenis kelamin
  String _kota_asal="";     //kota asal

  Human( String nama, String jenis_kelamin, String kota_asal) {
    this._jenis_kelamin=jenis_kelamin;
    this._nama=nama;
    this._kota_asal=kota_asal;
  }


  // Getter untuk mendapatkan nama mata kuliah
  String get nama => this._nama;

  // Setter untuk mengatur nama mata kuliah
  set nama(String value) {
    this._nama = value;
  }

  // Getter untuk mendapatkan jenis_kelamin 
  String get jenis_kelamin => this._jenis_kelamin;

  // Setter untuk mengatur jenis_kelamin 
  set jenis_kelamin(String value) {
    this._jenis_kelamin = value;
  }
 
  // Getter untuk mendapatkan kota_asal 
  String get kota_asal => this._kota_asal;

  // Setter untuk mengatur kota_asal 
  set kota_asal(String value) {
    this._kota_asal = value;
  }
}
