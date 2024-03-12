//Kelas Nilai Mata kuliah
class Nilai {
  double _mutu = 0.0; //Nilai mutu, max mutu 4 per 1 sks
  String _grade = ""; //grade (A/A-/B+/B/B-/C+ ... )

  // Konstruktor
  Nilai(double mutu){
    this._mutu = mutu;
    this._grade = _aturGrade(mutu); // Memanggil fungsi untuk menentukan grade
  }

  // Getter untuk mendapatkan nilai mutu
  double get mutu => this._mutu;

  // Setter untuk mengatur nilai mutu
  set mutu(double mutu) {
    this._mutu = mutu;
    this._grade = _aturGrade(mutu); // Mengupdate grade setiap kali nilai mutu diubah
  }

  // Getter untuk mendapatkan grade
  String get grade => this._grade;

  // Setter untuk mengatur grade (ini adalah perbaikan)
  set grade(String value) {
    this._grade = value;
  }

  // Mengatur grade berdasarkan mutu
  String _aturGrade(double value) {
    if(value == 12){
      return 'A';
    } else if(value > 11){
      return 'A-';
    } else if(value == 11){
      return 'B+';
    } else if(value > 10){
      return 'B';
    } else if(value == 10){
      return 'B-';
    } else if(value > 9){
      return 'C+';
    } else if(value == 9){
      return 'C';
    } else if(value > 8){
      return 'C-';
    } else if(value == 8){
      return 'D+';
    } else if(value > 7){
      return 'D';
    } else if(value == 7){
      return 'D-';
    } else {
      return 'E';
    }
  }

}
