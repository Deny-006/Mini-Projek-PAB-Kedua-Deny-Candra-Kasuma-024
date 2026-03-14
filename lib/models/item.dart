class Item {
  String? id;
  String nama;
  String kategori;
  String tahun;

  Item({
    this.id,
    required this.nama,
    required this.kategori,
    required this.tahun,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      nama: json['nama'],
      kategori: json['kategori'],
      tahun: json['tahun'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'nama': nama, 'kategori': kategori, 'tahun': tahun};
  }
}
