<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Traveller</title>
	
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
		crossorigin="anonymous">
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
		
	<link rel="stylesheet" href="./assets/css/style.css"/>

</head>
<body>
	<!-- cabecalho -->
	<header class="p-4 text-light cor__fundo">
		<h3>Projeto Traveller</h3>
		<h5>Área de Login</h5>
	</header>
	
	<!-- imagem do form -->
	<div class="container my-5">
		<div class="text-center">
			<img src="./assets/images/login.jpg" class="logo">
		</div>
		
		 <!-- div de controle -->
		<div class="row justify-content-center px-3">
			<div class="col-12 col-sm-12 col-md-6 align-self-center">
				<!-- form -->
				<form method ="post" action="./login">
					<div class="form-group">
						<label for="email" class="titulos">Email</label>
						<input type="email" class="form-control" id="txtEmail" name="email" placeholder="ex: seuemail@traveller.com">
					</div>
					
					<div class="form-group">
						<label for="senha" class="titulos">Senha</label>
						<div class="input-group mb-2">
							<input type="password" class="form-control senha" id="txtSenha" name="senha" placeholder="sua senha">
							<div class="input-group-prepend">
								<div class="input-group-text">
								<img src="./assets/images/visibilidade.png" class="pointer visibilidade">
								</div>
							</div>
						</div>
					</div>
					<!-- botao -->
					<button type="submit" class="btn btn-outline-light"> Entrar</button>
				
				</form>
			</div>
		
		</div>
	
	
	</div>
	
		<script src="./assets/js/exibir_senha.js"></script>

</body>
</html>