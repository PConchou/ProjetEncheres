
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>A Web Page</title>
</head>
<style>
	<%@include file="/css/style.css"%>
</style>
<body>
	<div class="container">
		<div class="logo">
			<h3>ENI-Encheres</h3>
		</div>
	<div class="se_connecter"><a href="/ServletCr�erParAntoine">S'inscrire-Se connecter</a></div>
	</div>
	<div class="titre"><h4>Liste des ench�res</h4></div>
	Filtres:<br>
	<label>
	<button type="submit"><i class="fa fa-search"></i></button><input type="text" placeholder="Le nom de l'article contient" size=30 />
	<br><br>
	Cat�gorie :
	<select>
	<option value="" disabled selected>Toutes</option>
	<option value="ameublement">Ameublement</option>
	<option value="vetement">V�tement</option>
	<option value="sport">Sport et Loisirs</option>
	</select>
	
	<button>Rechercher</button>
	</label>
	<div class="liste_ench�res">
	<br>
		<div class="ench�re">
		<div class="photo"><img src="https://pics.freeicons.io/uploads/icons/png/394198151553508653-512.png" width="50px" height="50px" alt="ench�re"></div>
		<div class="description">
			<a href="">PC Gamer pour travailler</a><br>
			Prix : 210 points<br>
			Fin de l'ench�re : <br>
			Vendeur : 
		</div>
		</div>
	</div>
	<footer>
		<h3>Eni 2021</h3>
	</footer>
	
</body>
</html>