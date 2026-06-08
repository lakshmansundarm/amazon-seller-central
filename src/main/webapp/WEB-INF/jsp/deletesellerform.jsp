<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>AmazonSeller</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    
  
<h1>Seller List</h1>  
<table  class="table table-striped" border="2" width="70%" cellpadding="2"> 
 <thead>
      <tr>
        <th>#</th>
        <th>SellerName</th>
        <th>Company Name</th>
        <th>Product Type</th>
        <th>Email Id</th>
        <th>Contact No</th>
        <th>Address</th>
        <th>GSTIN</th>
        <th>Account Status</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th colspan="2">Actions</th>
        
      </tr>
    </thead> 
<!-- <tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>  --> 
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
   <td>${seller.selleraccountactive}</td>
   <td>${seller.sellerStartDate}</td>
   <td>${seller.sellerEndDate}</td>
   <td><a href="editForm/${seller.sellerid}"> <span class="glyphicon glyphicon-pencil"></span></a></td>  
   <td><a href="deleteseller/${seller.sellerid}"><span class="glyphicon glyphicon-trash text-danger"></span></a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a class="btn btn-warning" href="sellerForm">Add New Seller</a>  
</body>
</html>