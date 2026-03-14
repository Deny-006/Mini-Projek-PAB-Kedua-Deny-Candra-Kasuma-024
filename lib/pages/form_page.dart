import 'package:flutter/material.dart';
import '../models/item.dart';

class FormPage extends StatefulWidget {
  final Item? item;
  const FormPage({super.key, this.item});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final nama = TextEditingController();
  final kategori = TextEditingController();
  final tahun = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.item != null) {
      nama.text = widget.item!.nama;
      kategori.text = widget.item!.kategori;
      tahun.text = widget.item!.tahun;
    }
  }

  bool validateForm() {
    if (nama.text.isEmpty || kategori.text.isEmpty || tahun.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Semua kolom harus diisi"),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    if (nama.text.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Nama barang minimal 3 karakter"),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    if (kategori.text.length < 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Kategori barang minimal 3 karakter"),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    if (int.tryParse(tahun.text) == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Tahun harus berupa angka"),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    return true;
  }

  InputDecoration inputStyle(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: const Color(0xFF7209B7)),
      filled: true,
      fillColor: Theme.of(context).cardColor,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item == null ? "Tambah Barang" : "Edit Barang",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF560BAD),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            opacity: 0.25,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: nama,
                decoration: inputStyle("Nama Barang", Icons.inventory),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: kategori,
                decoration: inputStyle("Kategori", Icons.category),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: tahun,
                keyboardType: TextInputType.number,
                decoration: inputStyle("Tahun", Icons.calendar_today),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (!validateForm()) return;
                    final item = Item(
                      id: widget.item?.id,
                      nama: nama.text,
                      kategori: kategori.text,
                      tahun: tahun.text,
                    );

                    Navigator.pop(context, item);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF560BAD),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: const Text(
                    "Simpan",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
