<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Seller Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ✅ Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- ✅ Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg rounded-4">
        <div class="card-header bg-primary text-white text-center">
            <h3 class="mb-0"><i class="bi bi-pencil-square"></i> Edit Seller Details</h3>
        </div>
        <div class="card-body p-4">
            
            <form:form method="POST" action="/AmazonSellerCentral/editsave" modelAttribute="command">
                <form:hidden path="sellerid"/>

                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">Seller Name</label>
                        <form:input path="sellername" cssClass="form-control" placeholder="Enter seller name"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Company Name</label>
                        <form:input path="sellerCompanyname" cssClass="form-control" placeholder="Enter company name"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Product Type</label>
                        <form:input path="sellerProducttype" cssClass="form-control" placeholder="Enter product type"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Email</label>
                        <form:input path="selleremail" cssClass="form-control" placeholder="Enter email"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Contact Number</label>
                        <form:input path="sellercontact" cssClass="form-control" placeholder="Enter contact number"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Address</label>
                        <form:input path="selleraddress" cssClass="form-control" placeholder="Enter address"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">GSTIN</label>
                        <form:input path="sellergstin" cssClass="form-control" placeholder="Enter GSTIN"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Start Date</label>
                        <form:input path="sellerStartDate" cssClass="form-control" type="date"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">End Date</label>
                        <form:input path="sellerEndDate" cssClass="form-control" type="date"/>
                    </div>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-success px-4">
                        <i class="bi bi-check-circle"></i> Save Changes
                    </button>
                    <a href="/AmazonSellerCentral/viewsellerForm" class="btn btn-secondary px-4 ms-2">
                        <i class="bi bi-arrow-left"></i> Back
                    </a>
                </div>
            </form:form>

        </div>
    </div>
</div>

<!-- ✅ Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
