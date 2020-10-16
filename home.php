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

<link rel="stylesheet" type="text/css" href="static/style.css">


<head>
	
	
	

</head>
<body>


	<a class="admin-co" href="connexion.php" href="">Admin</a>
	<main>
		<div class="top">
			<img src="image/igemIonis.png" alt="logo" class="logo">

		</div>

		<h1> Software to fully select and customise your <span>BioBrick</span> to specially recognise your target
		bacteria </h1>

	</main>
	<div class="text">
		<p>
			BacTail is a tailor made approach to specifically recognise, bind and lyse a pathogenic bacteria thanks to a
			genetically engineered bacteria (more info on our wiki: link).
			<br>
			<br>
			This software aims at generating the BioBrick that gives the ability to recognise a target bacterium of your
			choice.
			How does it work?

			<br>
			<br>1. First you need to select the bacteria you desire to target. Thanks to the bibliographical research of
			our
			team,
			the specific recognition sites of bacteriophage regions were directly selected according to your target
			bacteria.
			<br>
			<br>2. Then, you have different options for the promoters, the ribosomes and the terminators to fully
			customise your
			BioBrick. These are existing parts directly imported form the iGEM Registry of Standard Biological Parts.
			<br><br>
			At the end of the selection process the sequence of the BioBrick will be ready to directly be inserted
			between a
			prefix and suffix region of a plasmid* of your choice. Let’s get started!
			<br><br>
			* The final plasmid construct is only functional in Biosafety class 1 <i>Escherichia coli</i> K12.

		</p>

	</div>

<form action="" class="form-search">
        <button class="search">
        	<a href="search.php">
            Search
        </a>
        </button>
    </form>

    <img src="image/bactail.png" alt="illustartion" class="bactail">



    <footer class="footer">
        Made by the Ionis Paris 2020 iGEM Team for the BacTail project
    </footer>



	</body>

	</html>