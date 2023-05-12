<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri= "http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<jsp:useBean id= "Usuario" type="br.com.masters3.beans.Usuario" scope="request"></jsp:useBean>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto Traveller</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
		crossorigin="anonymous">
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
		
	<link rel="stylesheet" href="./assets/css/style.css"/>

</head>
<body>

<!-- cabecalho -->
	<header class="p-4 text-light cor__fundo meu__header">
		<div>
			<h3>Projeto Traveller</h3>
			<h5>Área do usuário</h5>
		</div>
		
		<div>
			<a class="btn btn-outline-light" href="./login.jsp">Sair</a>
		</div>
	</header>
	
	<div class="container my-5">
	
	<!-- área usuário -->
	
		<div class="text-center mb-5">
			<img src="<c:out value ="${Usuario.foto}"/>" class="logo" alt="fotousuario">
			<h2 class="my-1">Olá <c:out value ="${Usuario.nome}"/>!</h2>
			<p><c:out value ="${Usuario.email}"/></p>
			<p><c:out value ="${Usuario.ultimoAcesso}"/></p>
			<p>Nível do usuário: <c:if test= "${Usuario.nivel ==1}">Usuário</c:if>
								<c:if test= "${Usuario.nivel ==2}">Administrador</c:if>
			</p>
			<p>
				<a href="cadastro_usuario.jsp" class="btn btn-outline-light btn-sm mr-2">Cadastrar usuário</a>
			</p>
		</div>
		
		<p class="p-3 bs-light text-light meu__header">Dados da conta
			<button class="btn btn-outline-light" id="alterar">Alterar dados</button>
		</p>
		
		<!-- Formulário -->
		<form method="post" id="dados-conta" action="">
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="nome" class="titulos">Nome</label>
						<input type="text" class="form-control" id="nome" name="nome" value="<c:out value ="${Usuario.nome}"/>" disabled required>
					</div>
				</div>
				
				<div class="col-12 col-sm-12 col-md-6">
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
				</div>	
			</div>
			
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="email" class="titulos">Email</label>
						<input type="email" class="form-control" id="email" name="email" value="<c:out value ="${Usuario.email}"/>" disabled required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="acesso" class="titulos">Nível de acesso</label>
						<select class="form-control" id="acesso" name ="acesso" disabled required>
							<option value="" disabled selected>Selecione o nível de acesso</option>
							<option value="1" <c:if test= "${Usuario.nivel == 1}">selected</c:if>>Usuário</option>
							<option value="2" <c:if test= "${Usuario.nivel == 2}">selected</c:if>>Adminstrador</option>
						</select>
					</div>
				</div>	
			</div>
			
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="data_nascimento" class="titulos">Data de Nascimento</label>
						<input type="date" class="form-control" id="data_nascimento" name="data_nascimento" value="<c:out value ="${Usuario.nascimento}"/>" disabled required>
					</div>
				</div>
			
				<div class="col-12 col-sm-12 col-md-6">
						<div class="form-group">
							<label for="cidade" class="titulos">Cidade</label>
							<input type ="text" class="form-control" id="cidade" name = "cidade" disabled required value ="<c:out value="${ Usuario.cidade.cidade }"/>">
						</div>
					</div>	
			</div>
			
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="foto" class="titulos">foto</label>
						<input type="text" class="form-control" id="foto" name="foto" disabled required value="<c:out value ="${Usuario.foto}"/>">
					</div>
				</div>
				
				<div class="col-12 col-sm-12 col-md-6">
						<div class="form-group">
							<label for="genero" class="titulos">Gênero</label>
							<select class="form-control" id="genero" name="genero" disabled required>
								<option value="" disabled>Selecione seu gênero</option>
								<option value="1" <c:if test= "${Usuario.genero ==M}">selected</c:if>>Masculino</option>
								<option value="2" <c:if test= "${Usuario.genero ==F}">selected</c:if>>Feminino</option>
								<option value="3" <c:if test= "${Usuario.genero ==O}">selected</c:if>>Outros</option>
								<option value="4" <c:if test= "${Usuario.genero ==P}">selected</c:if>>Prefiro não dizer</option>
							</select>
						</div>
					</div>	
			</div>
			
			<div class="d-flex justify-content-end">
				<button type="submit" class="btn btn-secondary my-3" id="gravar" disabled >Salvar alterações</button>
			
			</div>
			
			
			
		</form>
	
	</div>
	
	
	
	<script src="./assets/js/exibir_senha.js"></script>
	<script src="./assets/js/permite_alterar_dados.js"></script>
	
	<footer class="p-4 text-light cor__fundo">
		<h5 class="text-center"> Projeto Traveller - Todos os direitos reservados</h5>
	
	</footer>

</body>
</html>