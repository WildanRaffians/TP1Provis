<h1>TP1 Provis</h1>
<h3>Deskripsi</h3>
 Program Dart yang menerapkan konsep OOP dan Asyncronus. Program ini berupa sistem informasi sederhana yang menampilkan data mahasiswa, matkul yang di kontrak dengan nilainya.
 Juga akan menampilkan nilai akhir, total sks dan IP.

 <h3>Penjelasan Program</h3>
 Pada program ini Menggunakan konsep OOP dan terdapat 5 kelas.
 <ol>
   <li>
     Kelas Human yang mana merupakan induk dari kelas mahasiswa dan dosen. Karena mahasiswa dan dosen merupakan human. 
     Atribut yang dimiliki yaitu nama, jenis kelamin dan kota asal. 
     Setiap atribut bersifat private dan setiap method bersifat public.
   </li>
   <li>
     Kelas Mahasiswa yang mana merupakan anak dari kelas Human. 
     Atribut yang dimiliki yaitu semua atribut Human, nim, dan list object mata kuliah yang di kontrak. Karena 1 mahasiswa dapat memiliki banyak mata kuliah yang dikontrak
     Setiap atribut bersifat private dan setiap method bersifat public.
   </li>
   <li>
     Kelas mata kuliah. 
     Atribut yang dimiliki yaitu kode, nama, sks, object nilai matkul, dan object dosen pengempu. 
     Setiap atribut bersifat private dan setiap method bersifat public.
   </li>
   </li>
   <li>
     Kelas Nilai.
     Atribut yang dimiliki yaitu mutu per sks (max 4.00), dan grade (A/A-/B+/B/B-/C+ ... ).
     Setiap atribut bersifat private dan setiap method bersifat public.
   </li>
   <li>
     Kelas Dosen yang mana merupakan anak dari kelas Human. 
     Atribut yang dimiliki yaitu semua atribut Human, nip, dan pendidikan terakhir.
     Setiap atribut bersifat private dan setiap method bersifat public.
   </li>
 </ol>

 Pada Kelas Main terdapat pengisian data masing-masing object lalu ditampilkan, mulai dari data mahasiswa lalu matkul yang dikontrak beserta nilainya.
 Lalu Ada konsep Asyncronus yaitu await untuk menghitung nilai akhir mutu yang dimiliki mahasiswa. 
 Fungsi await ini akan mengarah ke method di kelas mahasiswa yang mana method ini merupakan method Future agar terdapat delay untuk perumpamaan sedang menghitung nilai akhir mutu mahasiswa.
 Setelah Await dan Future selesai maka nilai akhir akan ditampilkan.
