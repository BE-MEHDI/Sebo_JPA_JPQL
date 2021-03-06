<%@page import="mehdi_imad.entities.Client"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setBundle basename="messages" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><fmt:message key="sinscrire" /></title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="col-md-8 offset-2">
			<div class="card my-5 shadow-lg p-3 mb-5 bg-white rounded">
			  <div class="card-header text-primary display-4 text-center">
			   <fmt:message key="insc" />
			  </div>
			  <div class="card-body">
			    <form action="inscrire" method="post">
				  <div class="form-group">
				    <label for="nom"><fmt:message key="nom" /></label>
				    <input type="text" class="form-control" name="nom"  aria-describedby="nom" value="${client.nom }">
				    <div class="text-danger"><i>${erreurs['nom'] }</i></div>
				  </div>
				  <div class="form-group">
				    <label for="prenom"><fmt:message key="prenom" /></label>
				    <input type="text" class="form-control" name="prenom" aria-describedby="prenom" value="${client.prenom }">
				    <div class="text-danger"><i>${erreurs['prenom'] }</i></div>
				  </div>
				  <div class="form-group">
				  	<label for="nom">E-mail</label>
				    <input type="email" class="form-control" name="email" value="${client.email }">
				    <div class="text-danger"><i>${erreurs['email'] }</i></div>
				  </div>
				  <div class="form-group">
				  	<label for="nom"><fmt:message key="adresse" /></label>
				    <input type="text" class="form-control" name="adresse" value="${client.adresse }">
				  </div>
				  <div class="form-row">
					<div class="form-group col-md-6">
				    	<input type="text" class="form-control" placeholder="<fmt:message key="ville" />" name="ville" value="${client.ville }">
				    </div>
				    <div class="form-group col-md-6">
				    	<input type="text" class="form-control" placeholder="<fmt:message key="code" />" name="codepostal" value="${client.codepostal }"><%-- ou bien param.codepostal --%>
				    </div>
				   </div>
				  <div class="form-group">
				    <label for="motdepass"><fmt:message key="motDePasse" /></label>
				    <input type="password" class="form-control" name="motdepasse">
				    <div class="text-danger"><i>${erreurs['motdepasse'] }</i></div>
				  </div>
				  
				  <button type="submit" class="btn btn-success btn-block"><fmt:message key="ok" /></button>
				</form>
			  </div>
			  <div class="card-footer d-flex justify-con">
			    <a href="index" class="btn btn-danger mr-4"><fmt:message key="retour" /></a>
			  </div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>