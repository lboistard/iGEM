<!DOCTYPE html>
<?php
$connect=mysqli_connect("127.0.0.1","root","","testigem");
?>
<head>
	<link rel="stylesheet" href="stylesheet.css">
	<img class="img" src="image/igemIonis.png">
	<br>
	<br>

	<h1 class="titre">Software tool IGEM IONIS</h1>
	<a href="home.php" class="acceuil">home</a>
	<a href="soumission.php" class="acceuil">submission</a>
	<link rel="stylesheet" href="lib/chosen/chosen.css" >
	<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
	<script src="lib/chosen/chosen.jquery.min.js"></script>

	<script type="text/javascript">
		$(function(){
			$('.chzn-select').chosen();
		})

	</script>

</head>
<body>


	<form action="search.php" method="POST" name="formulaire " oninput="x.value=parseInt(depth.value)">
		<div class="container">
			<label for="idchoix">Choose the target bacteria:</label>
			<select name="bacterie[]" multiple class="span4 chzn-select" >
				<option value=""></option>
				<?php 
				//genre et espece a ecrire en italique
				// promoter 
				// target moftif : information not avaliable si y a pas
				$test=0;
				$current="none";
				if($connect){
					$req='SELECT species, genus, ID FROM bddigemen ORDER BY genus';
					$resultat=mysqli_query($connect,$req);
					if($resultat==false)
						echo"Echec de l'exécution de la requête";
					else{
						while($ligne=mysqli_fetch_row($resultat)){
							$bact=$ligne[1];
							if ($bact != $current) {
								if ($test==1) {
									echo "</optgroup>";
								}
								echo"<optgroup label='".$ligne[1]."'>";
								$test=1;
								$current=$bact;
							}
							echo "<option style='font-style: italic;' value =\"".$ligne[2]."\" ";
							if (isset($_COOKIE["histo"])) {
								$selected=unserialize($_COOKIE["histo"]);
								foreach ($selected as $value) {
									if ($value==$ligne[0]) {
										echo "selected ";
									}
								}
							}
							echo ">".$ligne[0]."</option>";
						}
						echo "</optgroup>";
					}
				}
				?>
			</select>
			<input type='submit'name="envoyer"value="submit"/>
		</div>
	</form>
	<table id="globale" class="columns">
		<tr>
			<?php 
			if(isset($_POST["bacterie"])){
				if (!isset($_COOKIE["histo"])) {
					$selected=$_POST["bacterie"];
					$selected_lin=serialize($selected);
					setcookie("histo",$selected_lin,time()+1);
					header('location: search.php');
				}
			}
			if (isset($_COOKIE["histo"])) {
				$selected=unserialize($_COOKIE["histo"]);
				foreach($selected as$val){
					$req='SELECT ID, genus, species, Phage, LTFsequenceName , LTFsequence, chaperoneSequenceName, chaperoneSequence, chaperoneSequence2Name, chaperoneSequence2, TargetMotif, link, description FROM bddigemen where ID like "'.$val.'"';
					$resultat=mysqli_query($connect,$req);
					$bacterie=mysqli_fetch_assoc($resultat);

					echo "genus : <span style='font-style : italic'>".$bacterie["genus"]."</span>";
					echo "<br>";
					echo "species : <span style='font-style : italic'>".$bacterie["species"]."</span>";
					echo "<br>";
					echo "phage : ".$bacterie["Phage"];
					echo "<br>";
					// echo "LTFsequenceName : ".$bacterie["LTFsequenceName"];
					// echo "<br>";
					// echo "LTFsequence : ".$bacterie["LTFsequence"];
					// echo "<br>";
					// echo "chaperoneSequenceName : ".$bacterie["chaperoneSequenceName"];
					// echo "<br>";
					// echo "chaperoneSequence : ".$bacterie["chaperoneSequence"];
					// echo "<br>";
					// echo "chaperoneSequence2Name : ".$bacterie["chaperoneSequence2Name"];
					// echo "<br>";
					// echo "chaperoneSequence2 : ".$bacterie["chaperoneSequence2"];
					// echo "<br>";
					
					$text_motif=($bacterie["TargetMotif"]==NULL) ? "no data avaliable" : $bacterie["TargetMotif"];
					echo "TargetMotif : ".$text_motif;
					echo "<br>";
					if (isset($bacterie["description"])) {
						echo "description : ".$bacterie["description"];
						echo "<br>";
					}
					echo '<a href="'.$bacterie["link"].'" target="_blank" class="linkBacterie">link to phage sequence</a>';
					echo "<br>";
					?>
					<form action="getSequence.php" target="print_popup" onsubmit="window.open('about:blank','print_popup','width=600,height=300');" method="POST" name="sequence">
						<?php
						echo '<input type="hidden" name="ID" value="'.$bacterie["ID"].'" />';
						echo '<input type="hidden" name="LTFsequence" value="'.$bacterie["LTFsequence"].'" />';
						echo '<input type="hidden" name="LTFsequenceName" value="'.$bacterie["LTFsequenceName"].'" />';
						echo '<input type="hidden" name="chaperoneSequence" value="'.$bacterie["chaperoneSequence"].'" />';
						echo '<input type="hidden" name="chaperoneSequenceName" value="'.$bacterie["chaperoneSequenceName"].'" />';
						echo '<input type="hidden" name="chaperoneSequence2" value="'.$bacterie["chaperoneSequence2"].'" />';
						echo '<input type="hidden" name="chaperoneSequence2Name" value="'.$bacterie["chaperoneSequence2Name"].'" />';

						?>
						
						<div class="row">
							<div class="column">
								<figure>
									<img src="plasmidimage\promoteur.png" alt="promoteur" style="width:100%">
									<figcaption><input type="submit" id="getprom" name="sendprom" value="choose promoter"></figcaption>
								</figure>
							</div>
							<div class="column">
								<figure>
									<img src="plasmidimage\ribosome.png" alt="ribosome" style="width:100%">
									<figcaption><input type="submit" name="sendribo" id="getribo" value="choose ribosome"></figcaption>
								</figure>
							</div>
							<div class="column">
								<figure>
									<img src="plasmidimage\square.png" alt="square" style="width:100%">
									<figcaption><input type="submit" name="send" value="LppOmpA"></figcaption>
								</figure>
							</div>
							<div class="column">
								<figure>
									<img src="plasmidimage\ShortLink.png" alt="ShortLink" style="width:100%">
									<figcaption><input type="submit" name="send" value="ShortLink"></figcaption>
								</figure>
							</div>
							<?php
							echo '<div class="column">
							<figure>
							<img src="plasmidimage\cds.png" alt="'.$bacterie["LTFsequenceName"].'" style="width:100%">
							<figcaption><input type="submit" name="send" value="'.$bacterie["LTFsequenceName"].'"></figcaption>
							</figure>
							</div>';

							?>
							<div class="column">
								<figure>
									<img src="plasmidimage\terminator.png" alt="terminator" style="width:100%">
									<figcaption><input type="submit" name="sendterm" id="getterm" value="choose terminator"></figcaption>
								</figure>
							</div>
							<?php
							if ($bacterie["chaperoneSequenceName"]!=NULL) {
							//show space
								echo '<div class="column">
								<figure>
								<img src="plasmidimage\space.png" alt="space" style="width:100%">
								<figcaption><input type="submit" name="send" value="space"></figcaption>
								</figure>
								</div>';

						//show promoter 2
								echo '<div class="column">
								<figure>
								<img src="plasmidimage\promoteur.png" alt="promoteur2" style="width:100%">
								<figcaption><input type="submit" name="sendprom" id="getprom2" value="choose promoter"></figcaption>
								</figure>
								</div>';

						//show ribosome
								echo '<div class="column">
								<figure>
								<img src="plasmidimage\ribosome.png" alt="ribosome" style="width:100%">
								<figcaption><input type="submit" name="sendribo" id="getribo2" value="choose ribosome"></figcaption>
								</figure>
								</div>';

						//show chaperone
								echo '<div class="column">
								<figure>
								<img src="plasmidimage\cds.png" alt="'.$bacterie["chaperoneSequenceName"].'" style="width:100%">
								<figcaption><input type="submit" name="send" value="'.$bacterie["chaperoneSequenceName"].'"></figcaption>
								</figure>
								</div>';
								if ($bacterie["chaperoneSequence2Name"]!=NULL) {

							//show seconde chaperone if existe
									echo '<div class="column">
									<figure>
									<img src="plasmidimage\cds.png" alt="'.$bacterie["chaperoneSequence2Name"].'" style="width:100%">
									<figcaption><input type="submit" name="send" value="'.$bacterie["chaperoneSequence2Name"].'"></figcaption>
									</figure>
									</div>';
								}
								echo '<div class="column">
								<figure>
								<img src="plasmidimage\terminator.png" alt="terminator" style="width:100%">
								<figcaption><input type="submit" name="sendterm" id="getterm2" value="choose terminator"></figcaption>
								</figure>
								</div>';
							}
							?>
						</div>
					</form>
					<br>
					<form action="totalSequence.php" target="_blank"  method="POST" name="totalSequence">

						<?php 
						$data=serialize($bacterie);
						echo '<input type="hidden" name="ID" value="'.$bacterie["ID"].'" />';
						echo '<input type="hidden" name="LTFsequence" value="'.$bacterie["LTFsequence"].'" />';
						echo '<input type="hidden" name="LTFsequenceName" value="'.$bacterie["LTFsequenceName"].'" />';
						echo '<input type="hidden" name="chaperoneSequence" value="'.$bacterie["chaperoneSequence"].'" />';
						echo '<input type="hidden" name="chaperoneSequenceName" value="'.$bacterie["chaperoneSequenceName"].'" />';
						echo '<input type="hidden" name="chaperoneSequence2" value="'.$bacterie["chaperoneSequence2"].'" />';
						echo '<input type="hidden" name="chaperoneSequence2Name" value="'.$bacterie["chaperoneSequence2Name"].'" />';
						?>
						<br>
						<div>
							Please choose the different part options you would like to have in your BioBrick : 
						</div>
						<br> 

						<label for="choixPromot">Choose your promoter: </label>
						<select name="promoteur" id="choixPromot" required oninput="getprom.value=choixPromot.value">
							<option value="" disabled selected>--List of promoter--</option>
							<?php 
							$req='SELECT Name, Sequence, strength FROM promoteur ORDER BY strength DESC';
							$resultat=mysqli_query($connect,$req);
							if($resultat==false)
								echo"Echec de l'exécution de la requête";
							else{
								while($ligne=mysqli_fetch_row($resultat)){
									$prom=$ligne[0];
									$str=$ligne[2];
									echo '<option value="'.$prom.'">'.$prom.' strength :'.$str.'</option>';
								}}

								?>

							</select>
							<br>
							<label for="choixribo">Choose your ribosome: </label>
						<select name="ribosome" id="choixribo" required oninput="getribo.value=choixribo.value">
							<option value="" disabled selected>--List of ribosome--</option>
							<?php 
							$req='SELECT Name, Sequence, strength FROM ribosome ORDER BY strength DESC';
							$resultat=mysqli_query($connect,$req);
							if($resultat==false)
								echo"Echec de l'exécution de la requête";
							else{
								while($ligne=mysqli_fetch_row($resultat)){
									$ribo=$ligne[0];
									$str=$ligne[2];
									if ($str==NULL) {
										$str="n/a";
									}
									echo '<option value="'.$ribo.'">'.$ribo.' strength :'.$str.'</option>';
								}}

								?>

							</select>
							<br>
							<label for="choixterm">Choose your terminator: </label>
							<select name="terminator" id="choixterm" required oninput="getterm.value=choixterm.value">
								<option value="" disabled selected>--List of terminator--</option>
								<?php 
								$req='SELECT Name, Sequence, description FROM terminator';
								$resultat=mysqli_query($connect,$req);
								if($resultat==false)
									echo"Echec de l'exécution de la requête";
								else{
									while($ligne=mysqli_fetch_row($resultat)){
										$prom=$ligne[0];
										$desc=$ligne[2];
										echo '<option value="'.$prom.'">'.$prom.'   '.$desc.'</option>';
									}}

									?>
								</select>
								<br>
								<?php 
								if ($bacterie["chaperoneSequenceName"]!=NULL) {
									echo '<label for="choixPromot2">Choose your seconde promoter: </label>
									<select name="promoteur2" id="choixPromot2" required oninput="getprom2.value=choixPromot2.value">
									<option value="" disabled selected>--List of promoter--</option>';
									$req='SELECT Name, Sequence, strength FROM promoteur ORDER BY strength DESC';
									$resultat=mysqli_query($connect,$req);
									if($resultat==false)
										echo"Echec de l'exécution de la requête";
									else{
										while($ligne=mysqli_fetch_row($resultat)){
											$prom=$ligne[0];
											$str=$ligne[2];
											echo '<option value="'.$prom.'">'.$prom.' strength :'.$str.'</option>';
										}}

										echo '
										</select><br>';
										echo '
										<label for="choixribo2">Choose your seconde ribosome: </label>
						<select name="ribosome2" id="choixribo2" required oninput="getribo2.value=choixribo2.value">
							<option value="" disabled selected>--List of ribosome--</option>';
							
							$req='SELECT Name, Sequence, strength FROM ribosome ORDER BY strength DESC';
							$resultat=mysqli_query($connect,$req);
							if($resultat==false)
								echo"Echec de l'exécution de la requête";
							else{
								while($ligne=mysqli_fetch_row($resultat)){
									$ribo2=$ligne[0];
									$str=$ligne[2];
									if ($str==NULL) {
										$str="n/a";
									}
									echo '<option value="'.$ribo2.'">'.$ribo2.' strength :'.$str.'</option>';
								}}
								echo '</select>';

								

							
										echo '
										<br>
										<label for="choixterm2">Choose your seconde terminator: </label>
										<select name="terminator2" id="choixterm2" required oninput="getterm2.value=choixterm2.value">
										<option value="" disabled selected>--List of terminator--</option>';
										$req='SELECT Name, Sequence, description FROM terminator';
										$resultat=mysqli_query($connect,$req);
										if($resultat==false)
											echo"Echec de l'exécution de la requête";
										else{
											while($ligne=mysqli_fetch_row($resultat)){
												$prom=$ligne[0];
												$desc=$ligne[2];
												echo '<option value="'.$prom.'">'.$prom.'   '.$desc.'</option>';
											}}
											echo '
											</select>
											<br>';
										}
										?>
										<br>

										<input type="submit" name="getFullSequence" value="Get full sequence">


									</form>
									<?php

								}
							}
							?>
						</tr>
					</table>
				</body>
				<style>
					* {
						box-sizing: border-box;
					}

					.column {
						float: left;
						width: 8.33%;
						padding: 0px;
					}

					/* Clearfix (clear floats) */
					.row::after {
						content: "";
						clear: both;
						display: table;
					}

					/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
					@media screen and (max-width: 500px) {
						.column {
							width: 100%;
						}
					}
					figure {
						display: flex;
						flex-flow: column;
						margin: auto;
					}


					figcaption {
						font: italic sans-serif;
						padding: 3px;
						text-align: center;
					}
				</style>



				</html>