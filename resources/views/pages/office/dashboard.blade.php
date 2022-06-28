<x-OfficeLayout title="Dashboard">
        @section('custom_css')
        <style>
          #chartdiv {
            width: 100%;
            height: 500px;
          }
          </style>
        @endsection
        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            </div>
            
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Selamat Datang {{ Auth::user()->name }}</h6>
                </div>
                <div class="card-body">
                      <p class="mb-0">Sistem Informasi Administrasi Perpustakaan Desa Lumban Dolok <br> Jangan Berikan Email dan Password Anda pada Siapapun</p>
                </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-xl-6">
                <div class="row d-flex">
                  <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah Pengguna</div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                              {{number_format($user)}} 
                              Orang</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-user fa-3x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
      
                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Jumlah Peminjam</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                {{number_format($borrowers)}} 
                                Orang</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-3x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
  
                  <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Total Judul Buku</div>
                            <div class="row no-gutters align-items-center">
                                    <div class="col-auto">
                                      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">{{number_format($book)}} judul</div>
                                    </div>
                                    <div class="col">
                                      <div class="progress progress-sm mr-2">
                                        <div class="progress-bar bg-info" role="progressbar" 
                                        style="width: {{$book}}%"
                                        aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                      </div>
                                    </div>
                                  </div>
                                    {{number_format($newBook)}} Buku Baru
                                    {{number_format($oldBook)}} Buku Bekas
                                </div>
                          <div class="col-auto">
                            <i class="fas fa-book fa-3x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
      
                  <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card border-left-danger shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Total Seluruh Buku</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{number_format($totalbook)}} buah</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-book-open fa-solid fa-3x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
               
            </div>
            <div class="col-md-6 col-xl-6">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-center">Grafik Peminjam Buku</h6>
                </div>
                <div class="card-body">
                  <div id="chartdiv"></div>
                </div> 
            </div> 
        @section('custom_js')
        <script src="{{asset('offices/amcharts4/core.js')}}"></script>
        <script src="{{asset('offices/amcharts4/charts.js')}}"></script>
        <script src="{{asset('offices/amcharts4/themes/animated.js')}}"></script>
          <script>
            am4core.ready(function() {
            // Themes begin
            am4core.useTheme(am4themes_animated);
            // Themes end

            // Create chart instance
            var chart = am4core.create("chartdiv", am4charts.XYChart);

            // Add data
            chart.data = {!!$grafik!!};

            // Create axes

            var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "monthname";
            categoryAxis.renderer.labels.template.adapter.add("dy", function(dy, target) {
              if (target.dataItem && target.dataItem.index & 2 == 2) {
                return dy + 25;
              }
              return dy;
            });

            var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries());
            series.dataFields.valueY = "total";
            series.dataFields.categoryX = "monthname";
            series.name = "Count";
            series.columns.template.tooltipText = "{categoryX}: [bold]{valueY}[/]";


            // var columnTemplate = series.columns.template;
            
            }); // end am4core.ready()
          </script>
        @endsection
</x-OfficeLayout>