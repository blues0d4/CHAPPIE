<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/resources/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/dist/sweetalert.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Sweet Alert</title>
</head>
<body>
	<script>
// 		sweetAlert("Oops...", "Something went wrong!", "error");
// 		swal("hi");
swal({
  title: "Are you sure?",
  text: "You will not be able to recover this imaginary file!",
  type: "warning",
  showCancelButton: true,
  confirmButtonColor: "#DD6B55",
  confirmButtonText: "Yes, delete it!",
  cancelButtonText: "No, cancel plx!",
  closeOnConfirm: false,
  closeOnCancel: false
},
function(isConfirm){
  if (isConfirm) {
    swal("Deleted!", "Your imaginary file has been deleted.", "success");
  } else {
    swal("Cancelled", "Your imaginary file is safe :)", "error");
  }
});
	</script>
</body>
</html>