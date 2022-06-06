import 'package:DolokLib/repositories/book_repository.dart';
import 'package:get/get.dart';

class DetailBookController extends GetxController {
  final BookRepository _bookRepository;

  DetailBookController({
    required BookRepository bookRepository,
  }) : _bookRepository = bookRepository;

  void borrow(int bookId) async {
    final status = await _bookRepository.borrow(bookId);
    if (status) {
      Get.back();
      Get.showSnackbar(GetSnackBar(
        message: 'Peminjaman Buku Berhasil',
        duration: const Duration(seconds: 3),
      ));
    } else {
      Get.back();
      Get.showSnackbar(GetSnackBar(
        message: 'Peminjaman Buku Berhasil',
        duration: const Duration(seconds: 3),
      ));
    }
  }
}
