class CategoryBook {
    CategoryBook({
        required this.id,
        required this.namaKategori,
        required this.deskripsi,
        required this.createdBy,
        required this.updatedBy,
        required this.createdAt,
        required this.updatedAt,
    });

    final int id;
    final String namaKategori;
    final String deskripsi;
    final int createdBy;
    final int updatedBy;
    final DateTime createdAt;
    final DateTime updatedAt;

    factory CategoryBook.fromJson(Map<String, dynamic> json) => CategoryBook(
        id: json["id"],
        namaKategori: json["nama_kategori"],
        deskripsi: json["deskripsi"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama_kategori": namaKategori,
        "deskripsi": deskripsi,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}