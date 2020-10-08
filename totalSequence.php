<!DOCTYPE html>
<?php
$connect=mysqli_connect("127.0.0.1","root","","testigem");
$LppOmpA="AAAGCAACCAAGCTGGTTCTGGGTGCCGTGATTCTGGGCAGTACCCTGGCAGGTTGTTCTAGCAATGCCAAAATCGACCAAGGCATCAACAACAATGGCCCGACCCACGAAAACCAGCTGGGTGCCGGTGCCTTTGGTGGTTATCAGGTGAACCCGTACGTGGGCTTTGAAATGGGCTATGATTGGCTGGGCCGCATGCCGTACAAAGGCAGTGTGGAGAACGGCGCCTATAAAGCACAGGGCGTGCAGCTGACAGCAAAACTGGGCTACCCTATTACCGACGACCTGGACATCTACACACGCGGCGGCATGGTGTGGCGCGCCGATACCAAGAGCAACGTGTACGGCAAGAACCACGATACCGGCGTGAGTCCGGTGTTTGCCGGCGGTGTGGAGTATGCAATCACCCCGGAAATTGCCACACGTCCATGG";
$shortlink="GGTGGTTCTGGT";
$space="AGGGGATAACGC"
?>
<html>
<head>
	<title></title>
</head>
<body>
<div style="word-wrap : break-word;">
	<?php 
	if (isset($_POST)) {
		$req='SELECT Name, Sequence FROM promoteur where Name like "'.$_POST["promoteur"].'"';
		$resultat=mysqli_query($connect,$req);
		$prom=mysqli_fetch_assoc($resultat);
		echo '<span style="color: green">'.$prom["Sequence"].'</span>';
		
		$req='SELECT Name, Sequence FROM ribosome where Name like "'.$_POST["ribosome"].'"';
		$resultat=mysqli_query($connect,$req);
		$ribo=mysqli_fetch_assoc($resultat);
		echo '<span style="color: purple">'.$ribo["Sequence"].'</span>';

		echo '<span style="color: cyan">'.$LppOmpA.'</span>';
		echo '<span style="color: yellow">'.$shortlink.'</span>';
		
		echo '<span style="color: blue">'.$_POST["LTFsequence"].'</span>';

		$req='SELECT Name, Sequence FROM terminator where Name like "'.$_POST["terminator"].'"';
		$resultat=mysqli_query($connect,$req);
		$term=mysqli_fetch_assoc($resultat);
		echo '<span style="color: red">'.$term["Sequence"].'</span>';


		if ($_POST["chaperoneSequenceName"]!=NULL) {

			echo '<span style="color: black">'.$space.'</span>';

			$req='SELECT Name, Sequence FROM promoteur where Name like "'.$_POST["promoteur2"].'"';
			$resultat=mysqli_query($connect,$req);
			$prom2=mysqli_fetch_assoc($resultat);
			echo '<span style="color: green">'.$prom2["Sequence"].'</span>';


			$req='SELECT Name, Sequence FROM ribosome where Name like "'.$_POST["ribosome2"].'"';
			$resultat=mysqli_query($connect,$req);
			$ribo2=mysqli_fetch_assoc($resultat);
			echo '<span style="color: purple">'.$ribo2["Sequence"].'</span>';

			echo '<span style="color: blue">'.$_POST["chaperoneSequence"].'</span>';
			
			if ($_POST["chaperoneSequence2Name"]!=NULL) {
				echo '<span style="color: darkblue">'.$_POST["chaperoneSequence2"].'</span>';
			}

			$req='SELECT Name, Sequence FROM terminator where Name like "'.$_POST["terminator2"].'"';
			$resultat=mysqli_query($connect,$req);
			$term2=mysqli_fetch_assoc($resultat);
			echo '<span style="color: red">'.$term2["Sequence"].'</span>';
		}
		

		// echo $_POST["ID"];
		// echo "<br>";
		// echo $_POST["LTFsequence"];
		// echo "<br>";
		// echo $_POST["LTFsequenceName"];
		// echo "<br>";
		// echo $_POST["chaperoneSequence"];
		// echo "<br>";
		// echo $_POST["chaperoneSequenceName"];
		// echo "<br>";
		// echo $_POST["chaperoneSequence2"];
		// echo "<br>";
		// echo $_POST["chaperoneSequence2Name"];
	}
	?>
</div>
</body>
</html>