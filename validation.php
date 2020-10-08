<?php
$connect=mysqli_connect("127.0.0.1","root","","testigem");
$bdd = new PDO('mysql:host=localhost;dbname=testigem;charset=utf8', 'root', '');
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style_index.css">
	<title>page de validation admin</title>
</head>
<header>
	<h1 class="titre"><img class="img" src="igemIonis.png">page de validation admin</h1>
	<a href="home.php" class="acceuil">acceuil</a>
</header>
<body>
	<form action="validation.php" method="POST" id="validation"></form>

			<table id="aValider">
				<tr>
					<td>ID</td>
					<td>genus </td>
					<td>species</td>
					<td>phage</td>
					<td>LTF sequance name</td>
					<td>LTF sequance</td>
					<td>chaperones1 name</td>
					<td>chaperones1</td>
					<td>chaperones2 name</td>
					<td>chaperones2</td>
					<td>target Motif</td>
					<td>link</td>
					<td>description</td>
					<td>valider</td>
				</tr>
				<?php
				$req='SELECT * FROM avalider';
				$resultat=mysqli_query($connect,$req);
				while($livalid=mysqli_fetch_assoc($resultat)){
					echo"<tr><form action=\"validation.php\"method=\"POST\"> ";
					if(isset($livalid['ID'])){echo ("<td><input type=\"text\" name=\"mod_ID\" value=\"".$livalid['ID']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['genus'])){echo ("<td><input type=\"text\" name=\"mod_genus\" value=\"".$livalid['genus']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['species'])){echo ("<td><input type=\"text\" name=\"mod_species\" value=\"".$livalid['species']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['Phage'])){echo ("<td><input type=\"text\" name=\"mod_Phage\" value=\"".$livalid['Phage']."\"></td>"); }else{echo"<td></td>";}
					if(isset($livalid['LTFsequenceName'])){echo ("<td><input type=\"text\" name=\"mod_LTFsequenceName\" value=\"".$livalid['LTFsequenceName']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['LTFSequence'])){echo ("<td><input type=\"text\" name=\"mod_LTFSequence\" value=\"".$livalid['LTFSequence']."\"></td>");}else{echo"<td></td>";}
					echo ("<td><input type=\"text\" name=\"mod_chaperoneSequenceName\" value=\"".$livalid['chaperoneSequenceName']."\"></td>");
					if(isset($livalid['chaperoneSequence'])){echo ("<td><input type=\"text\" name=\"mod_chaperoneSequence\" value=\"".$livalid['chaperoneSequence']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['chaperoneSequence2Name'])){echo ("<td><input type=\"text\" name=\"mod_chaperoneSequence2Name\" value=\"".$livalid['chaperoneSequence2Name']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['chaperoneSequence2'])){echo ("<td><input type=\"text\" name=\"mod_chaperoneSequence2\" value=\"".$livalid['chaperoneSequence2']."\" ></td>");}else{echo"<td></td>";}
					if(isset($livalid['TargetMotif'])){echo ("<td><input type=\"text\" name=\"mod_TargetMotif\" value=\"".$livalid['TargetMotif']."\" ></td>");}else{echo"<td></td>";}
					if(isset($livalid['link'])){echo ("<td><input type=\"text\" name=\"mod_link\" value=\"".$livalid['link']."\"></td>");}else{echo"<td></td>";}
					if(isset($livalid['description'])){echo ("<td><input type=\"text\" name=\"mod_description\" value=\"".$livalid['description']."\"></td>");}else{echo"<td></td>";}

					echo "<td><input type=\"hidden\" name=\"ID_mod\" value=\"".$livalid['ID']."\"><input  type=\"submit\" name=\"valider\" value=\"valider\"></form>";
					echo "</tr>";
				}
				if (isset($_POST["valider"])) {
				$req='INSERT INTO bddigemen (ID, genus, species, Phage, LTFsequenceName, LTFsequence, chaperoneSequenceName, chaperoneSequence, chaperoneSequence2Name, chaperoneSequence2, TargetMotif, link, description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)';//Préparationdelarequête
				$res=mysqli_prepare($connect,$req);//liaisondesparamètres
				$var=mysqli_stmt_bind_param($res,'sssssssssssss',$_POST['mod_ID'],$_POST['mod_genus'],$_POST['mod_species'],$_POST['mod_Phage'],$_POST['mod_LTFsequenceName'],$_POST['mod_LTFSequence'],$_POST['mod_chaperoneSequenceName'],$_POST['mod_chaperoneSequence'],$_POST['mod_chaperoneSequence2Name'],$_POST['mod_chaperoneSequence2'],$_POST['mod_TargetMotif'],$_POST['mod_link'],$_POST['mod_description']);
				$var=mysqli_stmt_execute($res);

				$del='DELETE FROM `avalider` WHERE `avalider`.`ID` = ?';
					$resu=mysqli_prepare($connect,$del);
					$vari=mysqli_stmt_bind_param($resu,'s',$_POST['mod_ID']);
					$vari=mysqli_stmt_execute($resu);

				if ($var==false) {
					echo "echec";
					echo mysqli_error($connect);
				}
				elseif ($vari==false) {
					echo "echec";
					echo mysqli_error($connect);
				}
				else{

					echo "<meta http-equiv='refresh' content='0'>";
				}

			}

				?>
			</table>
		</form>
		</body>