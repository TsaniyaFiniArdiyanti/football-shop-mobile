# football_shop

<details>
<summary>Tugas 7: Elemen Dasar Flutter</summary>

### Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget Tree pada dasarnya adalah representasi hierarkis dari seluruh widget yang menyusun antarmuka pengguna (UI) sebuah aplikasi Flutter. Struktur ini dapat dianalogikan seperti pohon silsilah, di mana terdapat satu widget akar (biasanya MaterialApp) yang kemudian bercabang menjadi widget-widget lain di bawahnya. Flutter menggunakan pohon ini untuk menentukan bagaimana UI harus dirender atau digambar di layar. Hubungan induk-anak (parent-child) adalah mekanisme fundamental yang mengatur tata letak (layout) dalam struktur ini. Prosesnya bekerja sebagai berikut, induk (parent) bertanggung jawab memberikan batasan (constraints) kepada anaknya, yang menentukan batasan ukuran minimum dan maksimum (misalnya, lebar atau tinggi) yang boleh ditempati oleh anak. Setelah menerima batasan tersebut, anak (child) akan menentukan ukuran(size) spesifik yang dibutuhkannya, selama ukuran tersebut masih berada dalam batasan yang diberikan oleh induknya. Terakhir, setelah anak mengkomunikasikan ukurannya kembali ke induk, induk akan menentukan posisi anak tersebut (misalnya, di tengah, di kiri atas, atau relatif terhadap anak lainnya) di dalam area yang telah dialokasikan untuknya.

### Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
**1. Widget Struktur dan Layout**
- `MaterialApp`: Widget root aplikasi yang menyediakan tema, navigasi, dan struktur dasar Material Design
- `Scaffold`: Kerangka halaman yang menyediakan AppBar, Body, dan struktur layout dasar
- `AppBar`: Menampilkan judul di bagian atas
- `Column`: Menyusun widget secara vertikal
- `Row`: Menyusun widget secara horizontal
- `Padding`: Memberikan ruang kosong di sekeliling widget anaknya.
- `Center`: Menempatkan widget di tengah
- `SizedBox`: Sebuah kotak kosong dengan ukuran yang ditentukan untuk memberikan jarak.
- `GridView`: Membuat tampilan grid dengan jumlah kolom tertentu
- `Container`: Widget serba guna untuk mengatur ukuran, padding, margin, dan dekorasi (seperti warna latar atau border). 
- `Card`: Kontainer dengan elevasi dan bayangan untuk menampilkan informasi terstruktur

**2. Widget Visual dan ELemen UI**
- `Text`: Menampilkan string atau teks
- `Icon`: Menampilkan ikon dari Material Design Icons
- `Material`: Komponen dasar Material Design yang memberi properti visual seperti warna latar (color) dan bentuk (borderRadius) pada ItemCard.

**3. Widget Interaktif & Fungsional**
- `InkWell`: Membuat widget anaknya (dalam hal ini Container di ItemCard) menjadi responsif terhadap sentuhan (tap). Ini juga yang memberikan efek visual splash effect saat ditekan.
- `Snackbar`: Notifikasi singkat di bawah layar

**4. Widget Kustom**
- `MyApp`: Widget root kustom yang mewarisi StatelessWidget dan mengembalikan MaterialApp
- `MyHomePage`: Widget kustom yang mendefinisikan seluruh tata letak halaman utama, termasuk Scaffold, AppBar, dan body yang berisi semua elemen lainnya.
- `InfoCard`: Widget kustom yang dibuat untuk menampilkan informasi dalam sebuah Card.
- `ItemCard`: Widget kustom untuk menampilkan item menu dengan ikon dan teks.

### Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget MaterialApp berfungsi sebagai kerangka utama aplikasi Flutter yang menggunakan Material Design, yaitu sistem desain buatan Google untuk tampilan yang modern, konsisten, dan responsif. Widget ini mengatur berbagai aspek dasar aplikasi seperti tema (warna, font, dan gaya), judul aplikasi, navigasi antar halaman (route), serta halaman awal (home) yang akan pertama kali ditampilkan saat aplikasi dijalankan.

MaterialApp sering digunakan sebagai widget root karena ia menjadi parent tertinggi yang menyediakan konteks dan konfigurasi penting bagi seluruh widget di dalam aplikasi. Dengan meletakkan MaterialApp di bagian paling atas, semua widget turunan dapat mengakses properti global seperti tema, bahasa, atau sistem navigasi tanpa harus mendefinisikan secara ualng di setiap halaman. Singkatnya, MaterialApp bertindak sebagai pondasi utama yang memastikan seluruh elemen antarmuka FLutter berjalan dengan gaya dan perilaku khas Material Design secara konsisten di seluruh aplikasi.

### Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Perbedaan antara StatelessWidget dan StatefulWidget terletak pada fungsi mereka untuk mengelola data internal (state) yang dapat berubah setelah widget tersebut aktif.
- `StatelessWidget` bersifat tidak dapat berubah. Widget ini tidak memiliki state internal. Tampilannya murni ditentukan oleh konfigurasi (data) yang diterimanya dari widget induknya.
- `StatefulWidget` bersifat dapat berubah. Widget ini memiliki objek State internal yang dapat menyimpan data dan berubah seiring waktu, biasanya sebagai respons terhadap interaksi pengguna atau data eksternal.

### Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang merepresentasikan posisi sebuah widget di dalam widget tree Flutter. Ia berfungsi sebagai penghubung antara widget dan elemen-elemen di sekitarnya, sehingga widget dapat mengakses informasi dari struktur pohon aplikasi tempatnya berada.

BuildContext sangat penting karena digunakan untuk mengakses data dari widget induk, menampilkan elemen UI yang bergantung pada posisi widget, dan navigasi halaman.

Dalam metode build(BuildContext context), parameter context diberikan secara otomatis oleh Flutter. Parameter ini digunakan agar widget dapat membangun tampilan (UI) berdasarkan posisi dan lingkungan tempat widget tersebut berada. Setiap kali Flutter memanggil build(), ia memberikan BuildContext yang sesuai untuk memastikan widget dapat mengambil data, tema, atau ukuran yang relevan dengan posisinya di widget tree.

### Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload adalah proses memuat ulang kode yang diubah tanpa kehilangan state aplikasi yang sedang berjalan. Hot restart adalah proses menjalankan ulang aplikasi dari awal dengan kode yang diperbarui. Cara kerja hot reload adalah hanya kode yang diubah yang dikompilasi ulang, widget tree dibangun ulang, tetapi state dipertahankan, dan proses sangat cepat. Sementara hot restart aplikasi dihentikan sepenuhnya, kode dikompilasi ulang dari awal, semua state direset ke kondisi awal, dan lebih lambat dari hot reload.
</details>