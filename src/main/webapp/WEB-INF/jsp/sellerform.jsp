<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
    <title>Create Seller Account</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        }
        .form-label {
            font-weight: 600;
        }
    </style>
</head>
<body>

<div class="container mt-5 mb-5">
    <div class="card p-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3 class="text-primary fw-bold">Create Seller Account</h3>
            <a href="viewsellerForm" class="btn btn-outline-secondary btn-sm">
                <i class="bi bi-arrow-left-circle"></i> Back to List
            </a>
        </div>

        <!-- NOTE: no modelAttribute needed because your controller uses "command" -->
        <form:form method="post" action="save">
            <div class="row g-3">

                <div class="col-md-6">
                    <label class="form-label">Seller ID</label>
                    <form:input path="sellerid" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Seller Name</label>
                    <form:input path="sellername" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Company Name</label>
                    <form:input path="sellerCompanyname" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Product Type</label>
                    <form:input path="sellerProducttype" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Email</label>
                    <form:input path="selleremail" type="email" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Contact No</label>
                    <form:input path="sellercontact" type="tel" class="form-control" />
                </div>

                <div class="col-md-12">
                    <label class="form-label">Address</label>
                    <form:input path="selleraddress" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">GSTIN</label>
                    <form:input path="sellergstin" class="form-control" />
                </div>

                <div class="col-md-3">
                    <label class="form-label">Seller Start Date</label>
                    <form:input path="sellerStartDate" type="date" class="form-control" />
                </div>

                <div class="col-md-3">
                    <label class="form-label">Seller End Date</label>
                    <form:input path="sellerEndDate" type="date" class="form-control" />
                </div>

                <div class="col-md-6">
                    <label class="form-label">Account Active</label>
                    <form:select path="selleraccountactive" class="form-select">
                        <form:option value="true">True</form:option>
                        <form:option value="false">False</form:option>
                    </form:select>
                </div>

                <div class="col-12 text-end mt-4">
                    <button type="submit" class="btn btn-primary px-4">
                        <i class="bi bi-save"></i> Save
                    </button>
                </div>

            </div>
        </form:form>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
