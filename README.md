# football_shop

<details>
<summary>Tugas 7: Elemen Dasar Flutter</summary>

### Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget Tree pada dasarnya adalah representasi hierarkis dari seluruh widget yang menyusun antarmuka pengguna (UI) sebuah aplikasi Flutter. Struktur ini dapat dianalogikan seperti pohon silsilah, di mana terdapat satu widget akar (biasanya MaterialApp) yang kemudian bercabang menjadi widget-widget lain di bawahnya. Flutter menggunakan pohon ini untuk menentukan bagaimana UI harus dirender atau digambar di layar. Hubungan induk-anak (parent-child) adalah mekanisme fundamental yang mengatur tata letak (layout) dalam struktur ini. Prosesnya bekerja sebagai berikut, induk (parent) bertanggung jawab omemberikan batasan (constraints) kepada anaknya, yang menentukan batasan ukuran minimum dan maksimum (misalnya, lebar atau tinggi) yang boleh ditempati oleh anak. Setelah menerima batasan tersebut, anak (child) akan menentukan ukuran(size) spesifik yang dibutuhkannya, selama ukuran tersebut masih berada dalam batasan yang diberikan oleh induknya. Terakhir, setelah anak mengkomunikasikan ukurannya kembali ke induk, induk akan menentukan posisi anak tersebut (misalnya, di tengah, di kiri atas, atau relatif terhadap anak lainnya) di dalam area yang telah dialokasikan untuknya.

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

<details>
<summary>Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter</summary>

### Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Kita perlu membuat model Dart saat mengambil atau mengirim data JSON untuk menjembatani perbedaan antara struktur data JSON yang dinamis (tidak terikat tipe data secara ketat) dengan bahasa Dart yang bersifat strongly-typed (sangat ketat pada tipe data). Model berfungsi sebagai blueprint yang mendefinisikan bagaimana struktur data seharusnya terlihat. Konsekuensi jika langsung memetakan Map<String, dynamic> tanpa model adalah hilangnya type safety, masalah Null-Safety, maintainability yang buruk, dll.

### Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Package http: Berfungsi sebagai dasar untuk melakukan pertukaran data melalui protokol HTTP (seperti metode GET, POST, PUT, DELETE). Fungsinya murni untuk mengirim permintaan dan menerima respons dari server. Secara default, package ini bersifat stateless, artinya ia tidak menyimpan informasi apa pun (seperti sesi login) antar-permintaan.

CookieRequest (dari pbp_django_auth): Berfungsi sebagai pembungkus (wrapper) di atas protokol HTTP standar yang dirancang khusus untuk menangani manajemen sesi.

Perbedaan Peran: Perbedaan utamanya terletak pada manajemen state (state management). Package http biasa akan melupakan siapa pengguna setelah satu permintaan selesai. Sebaliknya, CookieRequest secara otomatis menyimpan dan menyertakan metadata sesi (cookies/session ID) yang diterima dari Django pada setiap permintaan berikutnya. Ini memungkinkan server mengenali bahwa permintaan kedua, ketiga, dan seterusnya berasal dari pengguna yang sama yang telah melakukan login.

### Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Instance CookieRequest perlu dibagikan ke seluruh komponen aplikasi (biasanya menggunakan Provider) untuk menjamin konsistensi sesi pengguna.

Saat pengguna berhasil login, server Django memberikan sebuah session ID yang disimpan di dalam instance CookieRequest tersebut. Jika instance CookieRequest baru dibuat di setiap halaman atau widget, maka instance baru tersebut masih kosong dan tidak memiliki session ID tadi. Akibatnya, server akan menganggap permintaan dari instance baru tersebut berasal dari pengguna anonim (belum login), meskipun pengguna sebenarnya sudah login di halaman sebelumnya.

### Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Konfigurasi konektivitas sangat penitng untuk menjembatani komunikasi antara aplikasi Flutter dan server Django. Hal ini mencakup penambahan 10.0.2.2 pada ALLOWED_HOSTS untuk memungkinkan emulator Android mengakses server di komputer host, serta pemberian izin internet pada AndroidManifest.xml agar aplikasi memiliki otorisasi untuk menggunakan jaringan. Di sisi lain, pengaktifan CORS dan pengaturan SameSite/Cookie diperlukan untuk mengatasi pembatasan keamanan browser (terutama pada platform web) dan memastikan transmisi data serta sesi autentikasi berjalan aman lintas origin. Kelalaian dalam menerapkan konfigurasi ini akan mengakibatkan kegagalan koneksi fatal, seperti munculnya SocketException, Connection Refused, atau penolakan akses oleh server, yang menyebabkan aplikasi tidak dapat mengirim atau menerima data sama sekali.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Input: Pengguna memasukkan data melalui widget formulir (TextFormField) di Flutter.

Validasi & Serialisasi: Tombol simpan ditekan. Flutter memvalidasi input, lalu mengubah data tersebut menjadi format JSON (jsonEncode).

Transmisi (POST): Flutter menggunakan CookieRequest untuk mengirim HTTP POST request yang berisi data JSON tersebut ke URL endpoint Django.

Pemrosesan Server: Django menerima request, memvalidasi data, dan menyimpannya ke dalam basis data (Database). Django mengembalikan respons JSON (misal: {"status": "success"}).

Fetching (GET): Untuk menampilkannya, Flutter melakukan HTTP GET request ke endpoint JSON Django.

Deserialisasi: Data JSON yang diterima diubah kembali menjadi objek Model Dart (menggunakan fromJson).

Tampilan: Objek Model tersebut digunakan oleh widget (seperti ListView atau GridView) untuk menampilkan informasi (nama, harga, deskripsi) ke layar pengguna.

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
**Register**

1. Flutter mengirim data pendaftaran (username, password) via **POST** ke endpoint register Django
2. Django menggunakan `UserCreationForm` untuk membuat akun baru di database
3. Jika sukses, Django mengembalikan status sukses
4. Pengguna diarahkan ke halaman login

**Login**

1. Flutter mengirim kredensial (username, password) via **POST** ke endpoint login Django
2. Django memverifikasi kredensial menggunakan fungsi `authenticate()`
3. Jika valid, Django menjalankan fungsi `login()`, yang membuat sesi baru di server dan menghasilkan session ID
4. Django mengirimkan respons sukses beserta **Session Cookie** di dalam header respons
5. **Penting**: `CookieRequest` di Flutter menangkap cookie ini dan menyimpannya di memori lokal aplikasi

**Logout**

1. Flutter memanggil fungsi `request.logout()` ke endpoint logout Django
2. Karena `CookieRequest` menyertakan cookie sesi yang tersimpan, Django tahu siapa yang meminta logout
3. Django menghapus sesi tersebut dari server
4. `CookieRequest` di Flutter menghapus cookie yang tersimpan di lokal
5. Pengguna diarahkan kembali ke halaman login karena sesi sudah tidak valid

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Persiapan Backend dan Integrasi Autentikasi Langkah pertama yang saya lakukan adalah memastikan proyek Django telah berjalan dengan baik, baik di localhost maupun di tautan deployment. Saya melakukan konfigurasi krusial di sisi Django, yaitu menambahkan corsheaders pada INSTALLED_APPS dan MIDDLEWARE serta mengatur CORS_ALLOW_ALL_ORIGINS = True (atau mendaftarkan host spesifik) untuk mengizinkan aplikasi Flutter berkomunikasi dengan server. Di sisi Flutter, saya mengintegrasikan sistem autentikasi dengan menginstal paket pbp_django_auth. Saya memodifikasi main.dart untuk membungkus widget root MaterialApp dengan Provider yang menyediakan satu instance CookieRequest tunggal. Hal ini memastikan bahwa state login (cookies dan session ID) dapat persisten dan dibagikan ke seluruh halaman aplikasi.

2. Implementasi Fitur Registrasi dan Login Setelah fondasi autentikasi siap, saya membuat dua layar formulir: Login Page dan Register Page. Pada kedua halaman ini, saya menggunakan widget TextFormField untuk mengambil input pengguna (username dan password). Untuk logika di baliknya, saya memanfaatkan metode request.login() dan request.postJson() dari pustaka pbp_django_auth untuk mengirim kredensial ke endpoint autentikasi Django. Saya menambahkan logika navigasi menggunakan Navigator.pushReplacement agar setelah berhasil login atau registrasi, pengguna langsung diarahkan ke halaman menu utama dan tidak dapat kembali ke halaman login dengan tombol back.

3. Pembuatan Model Kustom (ProductEntry) Sebelum mengambil data produk, saya menganalisis struktur JSON yang dikembalikan oleh endpoint Django. Berdasarkan struktur tersebut, saya membuat model Dart bernama ProductEntry. Saya menerapkan prinsip robustness pada model ini dengan menangani null safety. Saya menggunakan operator null coalescing (??) pada konstruktor fromJson untuk memberikan nilai default (seperti string kosong atau 0) jika ada atribut dari JSON yang bernilai null atau tidak lengkap. Hal ini mencegah aplikasi mengalami crash jika ada inkonsistensi data dari server.

4. Menampilkan Daftar Item dan Filter Pengguna Untuk menampilkan daftar item, saya menerapkan dua strategi berbeda sesuai kebutuhan checklist. Untuk menampilkan semua item, saya mengambil data dari endpoint publik (/json/). Namun, untuk memenuhi poin filter item berdasarkan pengguna yang login, saya membuat halaman khusus "My Products" yang mengambil data dari endpoint khusus di Django (/get-my-products/). Di Django, endpoint ini menggunakan Product.objects.filter(user=request.user) untuk memastikan hanya data milik pengguna tersebut yang dikirim. Di sisi Flutter, saya menggunakan FutureBuilder untuk memanggil fungsi fetching data secara asinkron. Data yang berhasil diambil kemudian ditampilkan menggunakan ListView.builder yang menyusun item secara vertikal (list), serta menggunakan widget kustom ProductEntryCard untuk menampilkan atribut detail seperti name, price, dan thumbnail dengan rapi.

5. Implementasi Halaman Detail Langkah terakhir adalah membuat navigasi ke halaman detail. Saya menambahkan fungsi onTap pada ProductEntryCard yang menggunakan Navigator.push untuk berpindah ke ProductDetailPage. Saat navigasi dilakukan, saya mengirimkan objek ProductEntry lengkap sebagai parameter ke halaman detail tersebut. Di halaman ProductDetailPage, saya menyusun tampilan menggunakan Column dan SingleChildScrollView untuk menampilkan seluruh atribut produk secara lengkap, termasuk deskripsi panjang, kategori, penjual, dan status featured. Saya juga menambahkan tombol "Back" di bagian atas halaman yang memanggil Navigator.pop(context) untuk memudahkan pengguna kembali ke daftar produk sebelumnya.
</details>