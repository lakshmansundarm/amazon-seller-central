<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
    <title>Seller List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }
        .btn-icon {
            border: none;
            background: transparent;
            font-size: 1.1rem;
        }
        .btn-icon.edit {
            color: #0d6efd;
        }
        .btn-icon.delete {
            color: #dc3545;
        }
        .btn-icon:hover {
            transform: scale(1.15);
            transition: 0.2s;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-primary fw-bold">Seller List</h2>
        <a href="sellerForm" class="btn btn-success">
            <i class="bi bi-plus-circle me-2"></i>Add New Seller
        </a>
    </div>

    <div class="table-container">
        <div class="table-responsive">
            <table class="table table-striped table-hover align-middle text-center">
                <thead class="table-dark">
                    <tr>
                        <th>Seller ID</th>
                        <th>Seller Name</th>
                        <th>Company Name</th>
                        <th>Product Type</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>GSTIN</th>
                        <th>Account Active</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="seller" items="${list}">
                        <tr>
                            <td>${seller.sellerid}</td>
                            <td>${seller.sellername}</td>
                            <td>${seller.sellerCompanyname}</td>
                            <td>${seller.sellerProducttype}</td>
                            <td>${seller.selleremail}</td>
                            <td>${seller.sellercontact}</td>
                            <td>${seller.selleraddress}</td>
                            <td>${seller.sellergstin}</td>
                            <td>
                                <span class="badge bg-${seller.selleraccountactive == 'true' ? 'success' : 'danger'}">
                                    ${seller.selleraccountactive}
                                </span>
                            </td>
                            <td>${seller.sellerStartDate}</td>
                            <td>${seller.sellerEndDate}</td>
                            <td>
                                <a href="editForm/${seller.sellerid}" class="btn-icon edit" title="Edit">
                                    <i class="bi bi-pencil-square"></i>
                                </a>
                                <a href="deleteseller/${seller.sellerid}" 
                                   class="btn-icon delete ms-2" 
                                   title="Delete"
                                   onclick="return confirm('Are you sure you want to delete this seller?');">
                                    <i class="bi bi-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>