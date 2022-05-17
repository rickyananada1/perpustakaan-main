@if($collection->count() > 0)
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama Peminjam</th>
            <th>Tanggal Peminjaman</th>
            <th>Status</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          @php
            $j = 0;
          @endphp
          <tr>
          @foreach ($collection as $i => $peminjaman)
          <td>{{$i+1}}</td>
          <td class="text-capitalize">{{$peminjaman->user->name}}</td>
          <td class="text-capitalize">{{$peminjaman->tanggal}}</td>
          <th class="text-capitalize">{{$peminjaman->st}}</th>
          <td>
          <a href="javascript:;" id="tombol-hapus" type="button" onclick="load_input('{{route('office.borrow.show',$peminjaman->id)}}');" class="btn btn-info btn-icon-split btn-sm">
              <span class="icon text-white-50">
                  <i class="fas fa-eye"></i>
              </span>
              <span class="text">Lihat</span>
          </a>
          @if($peminjaman->st == 'menunggu')
            <a href="javascript:;" id="tombol-confirm" type="button" onclick="handle_confirm('{{route('office.user-borrow.confirm',$peminjaman->id)}}');" class="btn btn-success btn-icon-split btn-sm">
              <span class="icon text-white-50">
                  <i class="fas fa-check"></i>
              </span>
              <span class="text">Konfirmasi Peminjaman</span>
          @endif
          @if($peminjaman->st == 'dikonfirmasi peminjaman')
          <a href="javascript:;" id="tombol-confirm" type="button" onclick="handle_confirm('{{route('office.user-borrow.borrowed',$peminjaman->id)}}');" class="btn btn-primary btn-icon-split btn-sm">
            <span class="icon text-white-50">
                <i class="fas fa-check"></i>
            </span>
            <span class="text">Dipinjam</span>
          </a>
          @endif
          @if($peminjaman->st == 'menunggu perpanjangan')
          <a href="javascript:;" id="tombol-confirm" type="button" onclick="handle_confirm('{{route('office.user-borrow.acc',$peminjaman->id)}}');" class="btn btn-primary btn-icon-split btn-sm">
            <span class="icon text-white-50">
                <i class="fas fa-check"></i>
            </span>
            <span class="text">Setujui Perpanjangan</span>
          </a>
          @endif
          @if($peminjaman->st == 'dikonfirmasi pengembalian')
          <a href="javascript:;" id="tombol-confirm" type="button" onclick="handle_confirm('{{route('office.user-borrow.return',$peminjaman->id)}}');" class="btn btn-primary btn-icon-split btn-sm">
            <span class="icon text-white-50">
                <i class="fas fa-check"></i>
            </span>
            <span class="text">Konfirmasi Pengembalian</span>
          </a>
          @endif
          <a href="javascript:;" id="tombol-hapus" type="button"  onclick="handle_delete('{{route('office.borrow.destroy',$peminjaman->id)}}');" class="btn btn-danger btn-icon-split btn-sm">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
            <span class="text">Hapus</span>
          </a>
          </td>
          </tr>
            @endforeach
        </tbody>
      </table>
    </div>
    {{ $collection->links('vendor.pagination.bootstrap-4') }}
@else 
<div class="text-center px-4 mb-3">
  <h1>
    Data kosong
    <br>
  </h1>
  <img class="mw-100" src="{{asset('offices/img/terms-1.png')}}" style="max-height:300px;">
</div>
@endif