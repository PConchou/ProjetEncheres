
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<title>Inscrivez-vous !</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Application ENI-Encheres - Page d'Inscription">
<meta name="author" content="Priscila Conchou">

<!-- Bootstrap core CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- CSS personalisé -->
<link href="css/JSPInscription.css" rel="stylesheet">

</head>

<body>
	<!------------NAVIGATION----------->
		
		<nav>
			<div class="row">
			<div class="col-sm-4">
		 		<img src="images/logo.png" alt="Logo du site" title="logo du site" />
		 	</div>
		 	<div class="col-sm-4">
		        <h1>ENI-Enchères</h1>
		   </div>
		   <div class="col-sm-4">
		        <a class="nav-link" href="/ProjetEni/encheres/ServletPageDAccueil">Accueil</a>
		        <a class="nav-link" href="/ProjetEni/ServletSeConnecter">Se connecter</a>
		   </div>
	       </div>
	    </nav>

	<!-- formulaire -->
	
		<div class="container">   	
			<div class="row">
				<form name="formulaireInscription" method="post" action="ServletVersJSPInscription">
					<fieldset>
						<legend>Créer mon compte</legend>
						
						<div class="row">
						<div class="col-sm-12 col-md-6">
						<label for="pseudo">Pseudo :</label>
						<input type="text" name="pseudo" id="pseudo" placeholder="Un petit nom sympa"
						size="40" maxlength="30" autofocus="autofocus" required="required" />
						</div>
						
						<div class="col-sm-12 col-md-6">
						<label for="rue">Rue :</label>
						<input type="text" name="rue" id="rue" placeholder="Votre rue"
						size="40" maxlength="30" required="required"/>
						</div>
						</div>
						
						<div class="row">
						<div class="col-sm-12 col-md-6">
						<label for="nom">Nom :</label>
						<input type="text" name="nom" id="nom" placeholder="Votre nom"
						size="40" maxlength="30" required="required" />
						</div>
						
						<div class="col-sm-12 col-md-6">
						<label for="ville">Ville :</label>
						<input type="text" name="ville" id="ville" placeholder="Votre ville"
						size="40" maxlength="30" required="required"/>
						</div>
						</div>
						
						
						<div class="row">
						<div class="col-sm-12 col-md-6">
						<label for="prenom">Prénom :</label>
						<input type="text" name="prenom" id="prenom" placeholder="Votre prénom"
						size="40" maxlength="30" required="required" />
						</div>
						
						<div class="col-sm-12 col-md-6">
						<label for="code_postal">Code postal :</label>
						<input type="text" name="code_postal" id="code_postal" placeholder="Votre Code postal"
						size="40" maxlength="10" required="required" />
						</div>
						</div>
						
						
						<div class="row">
						<div class="col-sm-12 col-md-6">
						<label for="telephone">Téléphone :</label>
						<input type="text" name="telephone" id="telephone" placeholder="(Optionel)"
						size="40" maxlength="15" />
						</div>
						
						<div class="col-sm-12 col-md-6">
						<label for="mot_de_passe">Mot de passe :</label>
						<input type="password" name="mot_de_passe" id="mot_de_passe" placeholder="Votre mot de passe"
						size="40" maxlength="30" required="required" />
						</div>
						</div>
						
						
						<div class="row">
						<div class="col-sm-12 col-md-6">
						<label for="email">Email :</label>
						<input type="email" name="email" id="email" placeholder="Votre email"
						size="40" maxlength="20" required="required" />
						</div>
						
						
						<div class="col-sm-12 col-md-6">
						<label for="confirmation_mot_de_passe">Confirmation :</label>
						<input type="password" name="confirmation_mot_de_passe" id="confirmation_mot_de_passe" placeholder="Repetez votre mot de passe"
						size="40" maxlength="30" required="required" />
						</div>
						</div>
						
						<div class="row">
						
						
						<!-------------------------------- ADD BUTTONS -------------------------->
						
						<div class="row">
							<div class="col-sm-4">
								<input type="submit" value="Valider" class="btn btn-outline-dark btn-sm">
							</div>
							
							<div class="col-sm-4">
								<input type="reset" value="Réinitialiser" class="btn btn-outline-dark btn-sm">
							</div>
							
							<div class="col-sm-4">
								<a href="/ProjetEni/encheres/ServletPageDAccueil"><input type="button" value="Annuler" class="btn btn-outline-dark btn-sm"></a>
							</div>
						</div>
						
						</div>
					</fieldset>
				</form>
			</div>
				
		</div>
		<!---------------------------------- ADD FOOTER -------------------------->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</body>

</html>