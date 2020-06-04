<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Casa do código Lista Livros</title>
	</head>
	<body>
		<h1>Lista de Livros</h1>
		
		<table>
		  <tr>
		    <th>Título</th>
		    <th>Descrição</th>
		    <th>Páginas</th>
		  </tr>
		  <c:forEach items="${produtos}" var="produto">
		  	<tr>
				<td>${produto.titulo}</td>
			    <td>${produto.descricao}</td>
			    <td>${produto.paginas}</td>
			</tr>
		  </c:forEach>
		</table>

	</body>
</html>