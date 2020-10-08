<!DOCTYPE html>
<?php $connect=mysqli_connect("127.0.0.1","root","","testigem");
?>
<html>
<body>
	<?php 
	if (isset($_POST["send"])) {
		if ($_POST["send"]==$_POST["LTFsequenceName"]) {
			echo "<head><title>".$_POST["LTFsequenceName"]."</title></head>";
			echo $_POST["LTFsequence"];
		}
		elseif ($_POST["send"]==$_POST["chaperoneSequenceName"]) {
			echo "<head><title>".$_POST["chaperoneSequenceName"]."</title></head>";
			echo $_POST["chaperoneSequence"];
		}
		elseif ($_POST["send"]==$_POST["chaperoneSequence2Name"]) {
			echo "<head><title>".$_POST["chaperoneSequence2Name"]."</title></head>";
			echo $_POST["chaperoneSequence2"];
		}
		elseif ($_POST["send"]=="LppOmpA") {
			echo "<head><title>LppOmpA</title></head>";
			echo "AAAGCAACCAAGCTGGTTCTGGGTGCCGTGATTCTGGGCAGTACCCTGGCAGGTTGTTCTAGCAATGCCAAAATCGACCAAGGCATCAACAACAATGGCCCGACCCACGAAAACCAGCTGGGTGCCGGTGCCTTTGGTGGTTATCAGGTGAACCCGTACGTGGGCTTTGAAATGGGCTATGATTGGCTGGGCCGCATGCCGTACAAAGGCAGTGTGGAGAACGGCGCCTATAAAGCACAGGGCGTGCAGCTGACAGCAAAACTGGGCTACCCTATTACCGACGACCTGGACATCTACACACGCGGCGGCATGGTGTGGCGCGCCGATACCAAGAGCAACGTGTACGGCAAGAACCACGATACCGGCGTGAGTCCGGTGTTTGCCGGCGGTGTGGAGTATGCAATCACCCCGGAAATTGCCACACGTCCATGG";
		}
		elseif ($_POST["send"]=="ShortLink") {
			echo "<head><title>ShortLink</title></head>";
			echo "GGTGGTTCTGGT";
		}
		elseif ($_POST["send"]=="space") {
			echo "<head><title>space</title></head>";
			echo "AGGGGATAACGC";
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
	elseif (isset($_POST["sendprom"]) && $_POST["sendprom"]!="choose promoteur") {
		$req='SELECT name, sequence FROM promoteur where name like "'.$_POST["sendprom"].'"';
		$resultat=mysqli_query($connect,$req);
		$prom=mysqli_fetch_assoc($resultat);
		echo "<head><title>".$prom["name"]."</title></head>";
		echo $prom["sequence"];
	}elseif (isset($_POST["sendribo"]) && $_POST["sendribo"]!="choose ribosome") {
		$req='SELECT name, sequence FROM ribosome where name like "'.$_POST["sendribo"].'"';
		$resultat=mysqli_query($connect,$req);
		$ribo=mysqli_fetch_assoc($resultat);
		echo "<head><title>".$ribo["name"]."</title></head>";
		echo $ribo["sequence"];
	}elseif (isset($_POST["sendterm"]) && $_POST["sendterm"]!="choose terminator") {
		$req='SELECT name, sequence FROM terminator where name like "'.$_POST["sendterm"].'"';
		$resultat=mysqli_query($connect,$req);
		$term=mysqli_fetch_assoc($resultat);
		echo "<head><title>".$term["name"]."</title></head>";
		echo $term["sequence"];
	}
	?>

</body>
</html>