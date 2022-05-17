<?php
 
namespace App\Exports;
 
use App\Models\BorrowDetail;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Contracts\View\View;
 
class ExcelExport implements FromView,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view():View
    {
        $data = BorrowDetail::get();
        return view('pages.office.borrow.pdf',compact('data'));
    }
    public function headings(): array
    {
        return ["Nama Buku", "Nama Peminjam","Tanggal Peminjaman","Tanggal Pengembalian","Status Peminjaman"];
    }
}