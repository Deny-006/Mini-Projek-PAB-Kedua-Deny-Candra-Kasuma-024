# 📦 Aplikasi Bergerak Koleksi Barang
Aplikasi Koleksi Barang adalah aplikasi mobile berbasis Flutter yang digunakan untuk mengelola dan mencatat koleksi barang pengguna secara digital.

Aplikasi ini memungkinkan pengguna untuk menambahkan, melihat, mengedit, dan menghapus data barang yang tersimpan dalam database menggunakan Supabase sebagai backend.

Selain itu aplikasi juga menyediakan fitur autentikasi pengguna, pencarian data barang, serta dukungan tema Dark Mode dan Light Mode untuk meningkatkan pengalaman pengguna.

Project ini dibuat sebagai Mini Project PAB 2 untuk mempraktikkan integrasi Flutter dengan Supabase serta penggunaan state management Provider.

## 🎯 Project Objectives
Tujuan utama dari pembuatan aplikasi ini adalah:
- Mengimplementasikan CRUD Operation pada aplikasi Flutter
- Mengintegrasikan Supabase sebagai backend service
- Menerapkan Authentication System
- Menggunakan Provider untuk State Management
- Mengimplementasikan Dark Mode & Light Mode
- Menerapkan Form Validation pada input pengguna

## 🏗️ Project Architecture
Struktur project dibuat modular agar mudah dikembangkan dan dipelihara.

<img width="269" height="361" alt="Image" src="https://github.com/user-attachments/assets/aea1f720-83bb-4f51-b5d7-2a0cd749b5e0" />

## 🗄️ Database Structure

Database pada aplikasi ini menggunakan **Supabase PostgreSQL** untuk menyimpan data koleksi barang pengguna.

| **FIELD** | **TYPE** | **DESCRIPTION** |
|----------|----------|----------------|
| id | uuid | Primary key yang digunakan sebagai identitas unik untuk setiap data barang. |
| nama | text | Menyimpan nama barang yang dimasukkan oleh pengguna. |
| kategori | text | Menyimpan kategori barang seperti Elektronik, Fashion, atau lainnya. |
| tahun | text | Menyimpan tahun barang dibuat atau tahun barang dimiliki. |

## 🚀 Features
Aplikasi menyediakan fitur autentikasi pengguna menggunakan Supabase Authentication.
Fitur autentikasi yang tersedia:

**a. User Login**

Tampilan pada halaman login

<img width="1919" height="915" alt="Image" src="https://github.com/user-attachments/assets/dd84ab40-8fa5-44bc-ada8-681c85d7f3b3" />

**b. User Registration**

Tampilan pada halaman registrasi

<img width="1919" height="910" alt="Image" src="https://github.com/user-attachments/assets/faf10aef-380d-44d2-833f-d3c0c40faa35" />

**c. HomePage**

Tampilan pada halaman homepage

<img width="1919" height="913" alt="Image" src="https://github.com/user-attachments/assets/779506de-9800-40ea-84dd-698d63105d30" />

**d. FormPage**

Tampilan pada halaman formpage

<img width="1919" height="915" alt="Image" src="https://github.com/user-attachments/assets/a9e510c5-f429-4250-bf6d-62a50c2bfec3" />

### Validasi yang diterapkan:

**1. Email atau Password tidak terdaftar**

Tampilan pada halaman login

<img width="1916" height="913" alt="Image" src="https://github.com/user-attachments/assets/9676ae80-cc3e-41e5-bccf-d868e610d39d" />

**2. Email atau Password sudah terdaftar**

Tampilan pada halaman registrasi

<img width="1919" height="912" alt="Image" src="https://github.com/user-attachments/assets/f459663b-fd88-4e37-9316-5c628d8ff4d6" />

**3. Email	Harus menggunakan domain @gmail.com**

a. Tampilan pada halaman login

<img width="1919" height="912" alt="Image" src="https://github.com/user-attachments/assets/93db1bff-9d7c-4c23-808d-f0996fdec1d0" />

b. Tampilan pada halaman registrasi

<img width="1919" height="914" alt="Image" src="https://github.com/user-attachments/assets/291f7bfd-aecc-4a87-b723-9bb9ad8b2020" />

**4. Password	Minimal 8 karakter**

a. Tampilan pada halaman login

<img width="1919" height="916" alt="Image" src="https://github.com/user-attachments/assets/bf9ec218-c87b-47c0-9fe2-a5825960311d" />

b. Tampilan pada halaman registrasi

<img width="1919" height="911" alt="Image" src="https://github.com/user-attachments/assets/7dd34ff1-49b0-45bf-9ddb-1be145d856af" />

**5. Login Berhasil**

Tampilan pada halaman login

<img width="1919" height="911" alt="Image" src="https://github.com/user-attachments/assets/6a442599-580f-49fe-bb38-50fb2f8a7f7f" />


## 📦 Item Management (CRUD)
Pengguna dapat mengelola data barang melalui fitur CRUD.
### ➕ Create
<img width="1919" height="925" alt="Image" src="https://github.com/user-attachments/assets/3d3e890c-cd22-4fd4-9b59-92faaaf7ead7" />

Menambahkan barang baru dengan informasi:
- Nama Barang
- Kategori Barang
- Tahun Barang
### 📄 Read
<img width="1917" height="914" alt="Image" src="https://github.com/user-attachments/assets/00db0352-ecd1-4251-84e1-e6eeec1d3581" />

Menampilkan daftar barang yang tersimpan dalam database.
Data yang ditampilkan:
- Nama barang
- Kategori
- Tahun
### ✏️ Update
<img width="1919" height="914" alt="Image" src="https://github.com/user-attachments/assets/95602dac-f87f-484b-9b43-0353e43f1928" />

Memungkinkan pengguna untuk mengedit data barang yang sudah ada.
## 🗑️ Delete
<img width="1919" height="910" alt="Image" src="https://github.com/user-attachments/assets/cbcd7e5d-3c2d-486c-8f8a-c12c55e4eb1e" />

Menghapus data barang dengan konfirmasi sebelum penghapusan.

## 🔍 Search Feature
<img width="1919" height="915" alt="Image" src="https://github.com/user-attachments/assets/8ff367b9-5bed-4f4e-a0a9-b497fc48f0f2" />

Aplikasi menyediakan fitur pencarian barang secara real-time berdasarkan nama barang.
Fitur ini memudahkan pengguna menemukan barang dengan cepat dari daftar koleksi.

## ✔️ Form Validation
Validasi input pada form bertujuan untuk memastikan data yang dimasukkan benar.

**1. Nama Barang	Minimal 3 karakter**

<img width="1919" height="914" alt="Image" src="https://github.com/user-attachments/assets/50c580a6-4f40-4170-9cf3-3efe8cfd4a6a" />

**2. Kategori	Minimal 3 karakter**

<img width="1919" height="912" alt="Image" src="https://github.com/user-attachments/assets/fd058e7b-cae2-4b06-bf8e-4a5ba92b01a4" />

**3. Tahun	Harus berupa angka**

<img width="1919" height="918" alt="Image" src="https://github.com/user-attachments/assets/90cd94ed-2e11-42b5-9bbf-fbeca722ff53" />

**4. Semua field	Tidak boleh kosong**

<img width="1918" height="914" alt="Image" src="https://github.com/user-attachments/assets/34e8fbc3-8109-43c0-a587-36464db7db7f" />

**5. Barang berhasil ditambahkan**

<img width="1919" height="916" alt="Image" src="https://github.com/user-attachments/assets/2a37bbd5-678f-49b0-aa36-0fc85a367a7e" />

**6. Barang berhasil diperbarui**

<img width="1919" height="910" alt="Image" src="https://github.com/user-attachments/assets/a503bf1c-c253-42c1-b0f1-68d14dd2058c" />

**7. Barang berhasil dihapus**

<img width="1919" height="913" alt="Image" src="https://github.com/user-attachments/assets/8fac4c16-82f6-49f0-846c-be2cfe19b9af" />

Jika validasi gagal maka akan muncul SnackBar error message.

## 🌗 Theme Mode
Aplikasi mendukung dua mode tampilan:
1. Light Mode
2. Dark Mode

**a. Tampilan Halaman Login**

<img width="1919" height="911" alt="Image" src="https://github.com/user-attachments/assets/b3b23b85-1871-41c2-b1a8-5ef249f7debd" />

<img width="1919" height="911" alt="Image" src="https://github.com/user-attachments/assets/e9822d4e-d52a-4f44-84e2-85821f5f010f" />

**b. Tampilan Halaman Registrasi**

<img width="1919" height="914" alt="Image" src="https://github.com/user-attachments/assets/ae950950-edcf-443c-a237-00e50dd300db" />

<img width="1919" height="911" alt="Image" src="https://github.com/user-attachments/assets/6f3ac6ef-da73-4773-939f-90e2a089efc2" />

**c. Tampilan Halaman HomePage**

<img width="1919" height="913" alt="Image" src="https://github.com/user-attachments/assets/779506de-9800-40ea-84dd-698d63105d30" />

<img width="1919" height="910" alt="Image" src="https://github.com/user-attachments/assets/d0a309b0-052f-450b-bee8-bb497447bdbf" />

**d. Tampilan Halaman FormPage**

<img width="1919" height="915" alt="Image" src="https://github.com/user-attachments/assets/a9e510c5-f429-4250-bf6d-62a50c2bfec3" />

<img width="1919" height="914" alt="Image" src="https://github.com/user-attachments/assets/fe261d85-0050-40c6-af0b-4c435fcee2a3" />

Tema aplikasi dikelola menggunakan Provider State Management sehingga perubahan tema dapat diterapkan secara global pada seluruh aplikasi.

## ⚙️ Tech Stack

| **CATEGORY** | **TECHNOLOGY** | **DESCRIPTION** |
|--------------|---------------|----------------|
| Programming Language | Dart | Bahasa pemrograman utama yang digunakan untuk membangun aplikasi Flutter. |
| Framework | Flutter | Framework UI dari Google untuk membangun aplikasi mobile cross-platform. |
| Backend Service | Supabase | Backend-as-a-Service yang menyediakan database PostgreSQL, authentication, dan API otomatis. |
| Database | PostgreSQL | Database relasional yang digunakan oleh Supabase untuk menyimpan data aplikasi. |
| State Management | Provider | Digunakan untuk mengelola state aplikasi seperti tema (dark mode dan light mode). |
| Authentication | Supabase Auth | Digunakan untuk proses login dan registrasi pengguna menggunakan email dan password. |
| IDE / Code Editor | Visual Studio Code | Editor yang digunakan untuk menulis dan menjalankan kode aplikasi. |
| Version Control | Git | Digunakan untuk mengelola perubahan kode selama proses pengembangan. |
| Repository Hosting | GitHub | Platform untuk menyimpan source code dan dokumentasi project. |

## 🧩 Flutter Widgets Used

| **WIDGET** | **KETERANGAN** |
|--------|------------|
| StatelessWidget | Digunakan sebagai widget yang tidak memiliki state yang berubah selama aplikasi berjalan, misalnya pada `MyApp` di `main.dart`. |
| StatefulWidget | Digunakan pada halaman seperti `LoginPage`, `RegisterPage`, `HomePage`, dan `FormPage` karena halaman tersebut membutuhkan perubahan state seperti input pengguna, loading, dan perubahan data. |
| MaterialApp | Digunakan sebagai root widget aplikasi untuk mengatur tema aplikasi, navigasi, serta konfigurasi dasar aplikasi Flutter. |
| Scaffold | Menyediakan struktur dasar halaman seperti `AppBar`, `body`, dan `FloatingActionButton`. |
| AppBar | Digunakan untuk menampilkan judul halaman serta tombol aksi seperti toggle tema dan logout. |
| Container | Digunakan untuk mengatur layout serta menambahkan dekorasi seperti background image atau gradient. |
| Stack | Digunakan untuk menumpuk beberapa widget secara bertingkat, misalnya untuk menampilkan background dan konten di atasnya. |
| Positioned | Digunakan dalam Stack untuk menentukan posisi widget secara spesifik seperti tombol toggle tema. |
| Column | Digunakan untuk menyusun widget secara vertikal pada halaman login, register, dan form input. |
| Row | Digunakan untuk menyusun widget secara horizontal, misalnya pada bagian action button dalam list item. |
| Padding | Digunakan untuk memberikan jarak antara widget dengan tepi layout atau widget lainnya. |
| SizedBox | Digunakan untuk memberikan jarak antar widget agar tampilan lebih rapi dan tidak terlalu rapat. |
| Text | Digunakan untuk menampilkan informasi seperti judul aplikasi, label input, serta data barang. |
| Icon | Digunakan untuk menampilkan ikon seperti ikon barang, login, kategori, dan tombol aksi lainnya. |
| CircleAvatar | Digunakan untuk menampilkan ikon barang dalam bentuk lingkaran agar tampilan list lebih menarik. |
| Card | Digunakan untuk membungkus setiap item barang agar tampil dalam bentuk kartu yang lebih terstruktur. |
| ListTile | Digunakan untuk menampilkan informasi barang seperti nama, kategori, dan tahun dalam list. |
| ListView.builder | Digunakan untuk menampilkan daftar barang secara dinamis dari database Supabase. |
| TextField | Digunakan untuk menerima input dari pengguna seperti email, password, nama barang, kategori, dan tahun. |
| TextEditingController | Digunakan untuk mengontrol dan mengambil nilai dari TextField. |
| ElevatedButton | Digunakan sebagai tombol utama untuk aksi seperti login, register, dan menyimpan data barang. |
| TextButton | Digunakan untuk navigasi seperti menuju halaman register atau kembali ke halaman login. |
| IconButton | Digunakan sebagai tombol dengan ikon seperti edit, delete, dan toggle visibility password. |
| FloatingActionButton | Digunakan sebagai tombol utama untuk menambahkan barang baru pada halaman HomePage. |
| CircularProgressIndicator | Digunakan untuk menampilkan indikator loading saat proses login atau pengambilan data berlangsung. |
| AlertDialog | Digunakan untuk menampilkan dialog konfirmasi sebelum melakukan aksi penting seperti logout atau menghapus data barang. |
| SnackBar | Digunakan untuk menampilkan notifikasi sementara kepada pengguna, misalnya ketika data berhasil ditambahkan, diperbarui, atau dihapus. |
| ScaffoldMessenger | Digunakan untuk mengelola dan menampilkan SnackBar pada halaman aplikasi. |
| Navigator | Digunakan untuk berpindah antar halaman seperti dari login ke home atau dari home ke form input barang. |
| MaterialPageRoute | Digunakan bersama Navigator untuk menentukan halaman tujuan navigasi. |
| setState() | Digunakan untuk memperbarui tampilan UI ketika terjadi perubahan data seperti hasil pencarian, loading, atau perubahan input. |
