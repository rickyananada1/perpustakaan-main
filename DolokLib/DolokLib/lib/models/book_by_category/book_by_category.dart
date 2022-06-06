import 'package:DolokLib/models/book_by_category/category_book.dart';

class BookByCategory {
    BookByCategory({
        required this.id,
        required this.kategoriId,
        required this.judul,
        required this.pengarang,
        required this.penerbit,
        required this.jumlahHalaman,
        required this.tahunTerbit,
        required this.foto,
        required this.edisiBuku,
        required this.jumlahBuku,
        required this.createdBy,
        required this.updatedBy,
        required this.createdAt,
        required this.updatedAt,
        required this.category,
    });

    final int id;
    final int kategoriId;
    final String judul;
    final String pengarang;
    final String penerbit;
    final String jumlahHalaman;
    final DateTime tahunTerbit;
    final String foto;
    final String edisiBuku;
    final int jumlahBuku;
    final int createdBy;
    final dynamic updatedBy;
    final DateTime createdAt;
    final dynamic updatedAt;
    final CategoryBook category;

    factory BookByCategory.fromJson(Map<String, dynamic> json) => BookByCategory(
        id: json["id"],
        kategoriId: json["kategori_id"],
        judul: json["judul"],
        pengarang: json["pengarang"],
        penerbit: json["penerbit"],
        jumlahHalaman: json["jumlah_halaman"],
        tahunTerbit: DateTime.parse(json["tahun_terbit"]),
        foto: json["foto"],
        edisiBuku: json["edisi_buku"],
        jumlahBuku: json["jumlah_buku"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        category: CategoryBook.fromJson(json["category"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "kategori_id": kategoriId,
        "judul": judul,
        "pengarang": pengarang,
        "penerbit": penerbit,
        "jumlah_halaman": jumlahHalaman,
        "tahun_terbit": "${tahunTerbit.year.toString().padLeft(4, '0')}-${tahunTerbit.month.toString().padLeft(2, '0')}-${tahunTerbit.day.toString().padLeft(2, '0')}",
        "foto": foto,
        "edisi_buku": edisiBuku,
        "jumlah_buku": jumlahBuku,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
        "category": category.toJson(),
    };
}