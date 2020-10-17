<!DOCTYPE html>
<?php
	//~-------------------------------------------------------------
	//~ Variables de connexion à la DB
	//~-------------------------------------------------------------
$hostname = 'localhost';
$username = 'root';
$passwordDB = 'root';
$myDataBase = 'testigem';


$connect=mysqli_connect($hostname,$username,$passwordDB,$myDataBase);
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="static/submission.css">
	<title>soumission</title>
</head>

<header>
	
	<div class="navigation">
		<div class="inner">
			<div class="container">
				<div class="left">
					<img class="img" src="image/igemIonis.png" class="igem-logo">
				</div>
				<div class="right">
					<a href="soumission.php" class="search">Search</a>
					<a href="home.php" class="home">Home</a>
					
				</div>
			</div>
		</div>
	</div>

	<h1 class="titre">
		Submission
	</h1>
	

</header>




<body>
	<form action="soumission.php" method="POST" name="add">
		<fieldset>
			<input type="text" name="ID" placeholder="ID like EColi" required="required">

			<input type="text" name="genus" placeholder="genus" required="required">

			<input type="text" name="species" placeholder="species" required="required">

			<input type="text" name="Phage" placeholder="Phage" required="required">

			<input type="text" name="LTFSequenceName" placeholder="LTFSequenceName" required="required">

			<textarea name="LTFSequence" id="LTFSequence" placeholder="LTF sequance" required="required"></textarea>

			<input type="text" name="chaperoneSequenceName" placeholder="chaperoneSequenceName">

			<textarea name="chaperoneSequence" id="chaperoneSequence" placeholder="chaperoneSequence"></textarea>

			<input type="text" name="chaperoneSequence2Name" placeholder="chaperoneSequence2Name" >

			<textarea name="chaperoneSequence2" id="chaperoneSequence2" placeholder="chaperoneSequence2"></textarea>

			<textarea name="TargetMotif" id="TargetMotif" placeholder="TargetMotif"></textarea>

			<textarea name="link" id="link" placeholder="link"></textarea>

			<textarea name="description" id="description" placeholder="description"></textarea>

			<input type="email" id="email" name="email" placeholder="email" required="required">

			<input type="submit" class="ajouter" name="ajouter" value="Add">

		</fieldset>

	</form>

	<?php
	if (isset($_POST["ajouter"])) {
		$ID=$_POST["ID"];
		$genus=$_POST["genus"];
		$species=$_POST["species"];
		$Phage=$_POST["Phage"];
		$LTFSequenceName=$_POST["LTFSequenceName"];
		$LTFSequence=$_POST["LTFSequence"];
		$chaperoneSequenceName=$_POST["chaperoneSequenceName"];
		$chaperoneSequence=$_POST["chaperoneSequence"];
		$chaperoneSequence2Name=$_POST["chaperoneSequence2Name"];
		$chaperoneSequence2=$_POST["chaperoneSequence2"];
		$TargetMotif=$_POST["TargetMotif"];
		$link=$_POST["link"];
		$description=$_POST["description"];
		$email=$_POST["email"];
		$req="INSERT INTO `avalider` (`ID`,`genus`, `species`, `Phage`, `LTFSequenceName`,`LTFSequence`, `chaperoneSequenceName`,`chaperoneSequence`,`chaperoneSequence2Name`,`chaperoneSequence2`, `TargetMotif`, `link`, `description`, `email`) VALUES ('$ID','$genus', '$species', '$Phage', '$LTFSequenceName','$LTFSequence', '$chaperoneSequenceName','$chaperoneSequence', '$chaperoneSequence2Name','$chaperoneSequence2', '$TargetMotif','$link','$description','$email')";
		$resultat=mysqli_query($connect,$req);
		if($resultat==true){
			$id=mysqli_insert_id($connect);
			echo"ajout soumis avec succes";
		}
		else{
			echo "test";
			echo mysqli_error($connect);
		}
	}
	?>

</body>
</html>