<?php $connect=mysqli_connect("127.0.0.1","root","","testigem");if($connect){
	
	?>

	<!DOCTYPE html>
	<html>
	<header>
		<h1 class="titre"><img class="img" src="image/igemIonis.png">Connexion</h1>

	</header>
	<head>
		<title>page de connexion</title>
		<link rel="stylesheet" href="style_index.css">
		<a href="home.php" class="connexion">home</a>


		<head>
			<form action="connexion.php" method="POST" name="identification">
				<fieldset>
					<label for ="ID">adresse email ou identifiant:</label>
					<input type="text" name="ID" <?php if (isset($_COOKIE["MDP_incorrecte"])) {
						echo "value=".$_COOKIE["MDP_incorrecte"];
					}?>>
					<br>
					<label for ="MDP">Mot de passe:</label>
					<input type="text" name="MDP">

				</fieldset>
				<input type="submit" name="send" value="envoyer">
			</form>	


			<html>
			<?php
			

			if (isset($_POST["ID"]) && isset($_POST["MDP"])){
				$ID=$_POST["ID"];
				$MDP=$_POST["MDP"];
				$req='SELECT email,MDP FROM admin';
				$resultat=mysqli_query($connect,$req);
				if($resultat==false)echo"Echec de l'exécution de la requête";
				else{
		//fetchsurchaquelignedelarequête
					while($ligne=mysqli_fetch_row($resultat)){
						if ($ID===$ligne[0]) {
							if ($MDP===$ligne[1]) {
								echo "connexion admin autoriser <br>";
								header('location: validation.php');
							}
						}

					}
				}
			}



		}
		else{
			echo "connexion à la base de donnée impossible";
		}

		?>
		<footer class="apres">
			<p class="foot">
				work in progress
			</p>

		</footer>