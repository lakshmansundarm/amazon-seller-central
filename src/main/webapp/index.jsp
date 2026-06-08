<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Amazon Seller Central</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- ✅ Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- ✅ Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Segoe UI', Roboto, Arial, sans-serif;
      background-color: #f7f7f7;
      color: #333;
    }

    /* 🌐 Navbar Styling */
    .navbar {
      background-color: #232f3e;
    }
    .navbar-brand img {
      width: 110px;
      height: auto;
    }
    .nav-link, .btn-outline-light {
      color: #f8f9fa !important;
    }

    /* 🌆 Hero Section */
    .hero {
      background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.7)), 
                  url('https://m.media-amazon.com/images/G/31/sell/hero/sell-on-amazon-hero._CB663682252_.jpg') center/cover no-repeat;
      color: white;
      text-align: center;
      padding: 140px 20px;
    }
    .hero h1 {
      font-size: 2.8rem;
      font-weight: 700;
    }
    .hero p {
      font-size: 1.2rem;
      margin-top: 15px;
      color: #e8e8e8;
    }

    /* ✨ CTA Buttons */
    .btn-warning {
      background-color: #ff9900;
      border: none;
      transition: all 0.3s ease;
    }
    .btn-warning:hover {
      background-color: #e68a00;
      transform: translateY(-3px);
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }

    /* 💼 Feature Cards */
    .feature-card {
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      border: none;
      border-radius: 12px;
    }
    .feature-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 16px rgba(0,0,0,0.15);
    }

    /* 🔻 Footer */
    footer {
      background-color: #232f3e;
      color: #aaa;
      padding: 20px 0;
    }
    footer a {
      color: #ff9900;
      text-decoration: none;
    }
    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body>

  <!-- ✅ Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark shadow-sm fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img src="https://pngimg.com/uploads/amazon/amazon_PNG25.png" alt="Amazon Logo">
      </a>
      <div class="ms-auto">
        <a href="sellerForm" class="btn btn-warning me-2">
          <i class="bi bi-person-plus-fill"></i> Create Seller
        </a>
        <a href="viewsellerForm" class="btn btn-outline-light">
          <i class="bi bi-card-list"></i> View Sellers
        </a>
      </div>
    </div>
  </nav>

  <!-- ✅ Hero Section -->
  <section class="hero">
    <div class="container">
      <h1>Empower Your Business with Amazon Seller Central</h1>
      <p>Manage your products, track sales, and reach millions of customers with ease.</p>
      <div class="mt-4">
        <a href="sellerForm" class="btn btn-warning btn-lg me-2">
          <i class="bi bi-rocket-takeoff"></i> Start Selling
        </a>
        <a href="viewsellerForm" class="btn btn-outline-light btn-lg">
          <i class="bi bi-bar-chart-line"></i> Manage Sellers
        </a>
      </div>
    </div>
  </section>

  <!-- ✅ Feature Section -->
  <section class="container my-5">
    <div class="text-center mb-5">
      <h2 class="fw-bold">Why Sell with Amazon?</h2>
      <p class="text-muted">Unlock powerful tools and features to grow your business efficiently.</p>
    </div>

    <div class="row g-4">
      <div class="col-md-4">
        <div class="card feature-card p-4 text-center">
          <i class="bi bi-globe fs-1 text-warning mb-3"></i>
          <h5>Global Reach</h5>
          <p class="text-muted">Expand your business across borders and connect with customers worldwide.</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card feature-card p-4 text-center">
          <i class="bi bi-graph-up-arrow fs-1 text-warning mb-3"></i>
          <h5>Smart Analytics</h5>
          <p class="text-muted">Access insights, track your performance, and make data-driven decisions.</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card feature-card p-4 text-center">
          <i class="bi bi-cart-check fs-1 text-warning mb-3"></i>
          <h5>Easy Management</h5>
          <p class="text-muted">Simplify inventory, order tracking, and pricing from one unified dashboard.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ✅ Footer -->
  <footer class="text-center">
    <div class="container">
      <p class="mb-1">&copy; 2025 Amazon Seller Central | Built for Learning & Demo Purposes</p>
      <a href="#">Privacy Policy</a> • <a href="#">Terms of Service</a>
    </div>
  </footer>

  <!-- ✅ Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
