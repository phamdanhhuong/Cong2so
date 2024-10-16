<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script type="text/javascript" src="check-cong.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form class="form-login" action="Cong" method="post" onsubmit="return handleCong()">
		<h1 class="mt-5">tinh tong</h1>
		<div class="mb-3 d-flex gap-3">
		  <div>
		  	<label class="form-label">Số 1</label>
		  	<input class="form-control" name="so1" id="s1">	
		  </div>
		  <div>
		  	<label class="form-label">Số 2</label>
		  	<input class="form-control" name="so2" id="s2">	
		  </div>
		</div>
		<input class="btn btn-primary" type="submit">
		<div class="form-control mt-3" style="width: 50px; height: 30px" id="ketqua"> ${ketqua} </div>	
	</form>
</body>
</html>