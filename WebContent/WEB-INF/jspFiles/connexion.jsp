<!-- 
Antoine
Jsp en r�ception de la servlet Se Connecter
Contenant un formulaire simple ff
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Se connecter</title>
</head>

<style>
	<%@include file="/WEB-INF/css/style.css"%>
</style>

<body>

<p><c:out value="${form.resultat }" /> </p>




<h1> Se connecter</h1>

		<form action="<%=request.getContextPath()%>/ServletSeConnecter" method="post">
						
				<!-- TODO : L'autofocus ne marche pas -->
				<!-- TODO : mise en page CSS -->
				
				<div class=formLabel>
				<label for="pseudo">pseudo :</label>
				</div>
				<div class=formInput>
				<input name="pseudo" placeholder="Mon pseudo" required autofocus>
				</div>
				
				<div class=formLabel>
				<label for="password">Mot de passe :</label>
				</div>
				<div class=formInput>
				<input name="password" placeholder="Mon mot de passe" required type="password">
				</div>
				
				<div class=formLabel>
				<label for="souvenirDeMoi">Se souvenir de moi :</label>
				</div>
				<div class=formInput>
				<input name="seSouvenirDeMoi" type="checkbox">
				</div>
				
				<div class=formLabel>
				<input type="button" value = "Oubli mot de passe">
				</div>
				
				<div class=formLabel>
				<input type="submit" value="Valider"/>
				<a href="<%=request.getContextPath()%>"><input type="button" value="Annuler"/></a>
				</div>
				
				<!-- TODO : lien vers la page d'inscription a faire-->
				
				<div class=formLabel>
				<a href =""<%=request.getContextPath()%>/inscription"> Cr�er un compte</a>
				</div>
			
		</form>



</body>
</html>