<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <title>AstroShop</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  <style>
    .nav-product-link {
    font-family: Roboto, sans-serif;
    color: white !important;
    font-weight: 500 !important;
    background: rgba(255,255,255, 0.1) !important;
    padding: 1rem 2rem !important;
    border-radius: 8px !important;
    margin-right: 1.5rem !important;
    text-decoration: none !important;
    transition: 0.3s all ease;
}
.nav-product-link:hover{
    background: rgba(63,87,157,0.9) !important;
}
  </style>
</head>
<body style="box-sizing: border-box;">
<div style="background: rgb(229,201,191); background: linear-gradient(90deg, rgba(229,201,191,1) 0%, rgba(102,113,163,1) 100%);">
<nav class="navbar navbar-expand-lg px-2" style="background-color: rgba(255, 255, 255, 0.2);">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><img src="https://iili.io/H8IDNf9.png" class="m-2" style="width: 200px;height:auto;"/></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item" style="color: #6671A3;">
          <a class="nav-link" style="color: #6671A3; font-weight:500;" href="/">Home</a>
        </li>  
        <li class="nav-item" style="color: #6671A3;">
          <a class="nav-link" style="color: #6671A3; font-weight:500;" href="/products">Products</a>
        </li>       
        <li class="nav-item" style="color: #6671A3;">
          <a class="nav-link" style="color: #6671A3; font-weight:500;" href="/orders">Orders</a>
        </li> 
        <li class="nav-item" style="color: #6671A3;">
          <a class="nav-link" style="color: #6671A3; font-weight:500;" href="/customers">Customers</a>
        </li> 
        <li class="nav-item" style="color: #6671A3;">
          <a class="nav-link" style="color: #6671A3; font-weight:500;" href="/categories">Product Categories</a>
        </li> 
      </ul>
      <div class="d-flex m-2">
        @yield('menu')
      </div>
      <form class="d-flex" action="/search" method="GET">
        @csrf
        <input class="form-control me-2" type="search" name="searchTerm" placeholder="Search products.." aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass" style="color: #ffffff;"></i></button>
      </form>
    </div>
  </div>
</nav>
<div class="p-4 d-flex flex-column align-items-center justify-content-center" style="min-height: 100vh;">
@yield('content')
</div>

  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 px-4" style="background-color: rgba(255, 255, 255, 0.2);">
    <div class="col-md-12 d-flex align-items-center justify-content-between">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
      <img src="https://iili.io/H8IDNf9.png" class="m-2" style="width: 150px;height:auto;"/>    
      </a>
    </a>
      <span class="mb-3 mb-md-0 text-light justify-content-end">&copy; 2023 AstroShop Admin Website</span>
    </div>
  </footer>

</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/6def7c65e6.js" crossorigin="anonymous"></script>
</body>
</html>
