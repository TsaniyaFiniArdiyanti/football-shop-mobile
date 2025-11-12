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

<details>
<summary>Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements</summary>

### Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()` pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
1. **`Navigator.push()`** berfungsi untuk menambahkan halaman baru ke atas tumpukan halaman (stack) tanpa menghapus halaman sebelumnya. Halaman lama masih tersimpan di bawahnya, sehingga pengguna bisa kembali ke halaman sebelumnya menggunakan tombol back.
   - **Contoh kasus:**
     Dari menu utama ke halaman form, pengguna menekan tombol "Create Product" di `menu.dart`. Setelah selesai atau tidak jadi mengisi form, pengguna harus bisa menekan tombol back untuk kembali ke menu utama.

2. **`Navigator.pushReplacement()`** berfungsi untuk membuka halaman baru, tetapi dengan mengganti halaman saat ini di tumpukan. Halaman lama dihapus dari stack, sehingga pengguna tidak bisa kembali ke halaman sebelumnya dengan tombol back.
   - **Contoh kasus:**
     Setelah menyelesaikan aksi, Pengguna selesai mengisi form "Add Product" dan menekan "Save". Aplikasi menyimpan data lalu membawanya ke halaman "My Products". Jika pengguna menekan back dari halaman "My Products", pengguna tidak akan kembali ke form (yang datanya sudah disubmit), melainkan kembali ke Menu Utama. Ini mencegah double-submit atau kebingungan.

### Bagaimana kamu memanfaatkan hierarchy widget seperti `Scaffold`, `AppBar`, dan `Drawer` untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Hierarki Scaffold, AppBar, dan Drawer dimanfaatkan untuk menciptakan konsistensi dengan menjadikan Scaffold sebagai kerangka dasar untuk setiap halaman. Scaffold menyediakan tempat standar, yaitu appBar untuk bagian atas dan drawer untuk menu navigasi samping. Kunci konsistensi adalah reusability, elemen yang identik di semua halaman (seperti menu di Drawer) dibuat menjadi satu widget terpisah (LeftDrawer) dan dipanggil setiap halaman. Sementara itu, elemen yang strukturnya sama tapi kontennya beda (seperti AppBar yang judulnya berganti) tetap digunakan di setiap halaman untuk menjaga keseragaman visual. Dengan cara ini, saya mendapatkan struktur yang sesuai dan tampilan yang seragam di seluruh aplikasi dengan usaha minimal.

### Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti `Padding`, `SingleChildScrollView`, dan `ListView` saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

1. Padding
    
    **Kelebihan dalam sebuah form:**
    - Membuat UI terlihat jauh lebih rapi, profesional, dan tidak sesak
    - Memperjelas batas antar elemen input
    - Membantu menciptakan hierarki visual yang lebih enak dipandang

    **Contoh Penggunaan di Aplikasi:**
    Membuat hampir setiap elemen input (seperti TextFormField dan DropdownButtonFormField) di dalam widget Padding untuk memberi jarak 8.0 piksel di sekelilingnya.

2. SingleChildScrollView
    
    **Kelebihan dalam sebuah form:**
    - Menangani overflow ketika konten melebihi layar
    - Cocok untuk form dengan jumlah field variabel
    - Memungkinkan scrolling smooth tanpa batasan layout yang kaku

    **Contoh Penggunaan di Aplikasi:**
    Membuat seluruh Form (yang berisi Column dari semua field) dengan SingleChildScrollView untuk memastikan halaman form bisa di-scroll.

3. ListView
    
    **Kelebihan dalam sebuah form:**
    - Render hanya elemen yang terlihat di viewport (performance optimal)
    - Built-in scrolling behavior
    - Cocok untuk list data produk atau kategori

    **Contoh Penggunaan di Aplikasi:**
    Digunakan di file `left_drawer.dart`. Seluruh navigasi ditempatkan sebagai children dari sebuah ListView. Ini memastikan bahwa jika menu di drawer suatu saat menjadi sangat banyak, menu tersebut dapat di-scroll oleh pengguna.

### Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Untuk menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten, caranya dengan mendefinisikan skema warna secara terpusat di satu lokasi, yaitu di dalam properti theme pada widget MaterialApp di file main.dart. Dengan menggunakan ColorScheme.fromSeed(), saya hanya perlu menentukan satu seedColor yang merepresentasikan warna brand, dan Flutter akan secara otomatis menghasilkan seluruh palet warna (seperti primary, secondary, dan background) yang harmonis. Setelah tema global ini ditetapkan, semua widget di seluruh aplikasi, seperti AppBar dan ElevatedButton, akan secara otomatis mengambil warna yang sesuai menggunakan Theme.of(context). Oleh karena itu, bagian terpenting adalah menghindari pengaturan warna secara manual (hardcoding) pada widget individual. Dengan cara ini, jika brand saya berganti warna, saya hanya perlu mengubah satu seedColor di main.dart untuk memperbarui tampilan seluruh aplikasi secara konsisten.

</details>