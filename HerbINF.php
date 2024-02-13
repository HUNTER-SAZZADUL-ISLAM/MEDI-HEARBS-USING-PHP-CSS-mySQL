

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Create Page </title>
  <link rel="stylesheet" href="detection.css">
  <div class="container">

<form action="" method="POST">
  <center><b><h1 style="font-size:90px;"> PLEASE SELECT YOUR DISEASE</h1></b>
    <p><h3 style="font-size:45px;"><i> Please select in this form to GET HERB INFORMATION THAT YOU NEEDED </i></h3></p>

   
      
            <label for="SYMPTOMS"><h2><b>SELECT DISEASE GIVEN BELOW:</b></h2></label>
             <select name="SYMPTOMS"id="SYMPTOMS">
             
             <option value="PLEASE SELECT ONE">PLEASE SELECT ONE</option>
            
             <option value="Common Cold">Common Cold</option>
             <option value="Dementia">Dementia</option>
             <option value="Skin diseases">Skin diseases</option>
             <option value="Eczema">Eczema</option>
             <option value="obesity">obesity</option>
             <option value="Acne">alopecia areata</option>
             <option value="cholesterol">cholesterol</option>
             <option value="Diabetes">Diabetes</option>
             <option value="Insomnia">Insomnia</option>
             <option value="Flu">Migraine headaches</option>
             <option value="cough">cough</option>
             <option value="high cholesterol">high cholesterol</option>
             <option value="Asthma">Asthma</option>
             <option value="Weak immunity">Weak immunity</option>
             <option value="gastritis">gastritis</option>
             <option value="sleep problems">sleep problems</option>
             <option value="Reduced the swelling of injured tissue
">Reduced the swelling of injured tissue
</option>
             <option value="Gall bladder and Liver disease">Gall bladder and Liver disease</option>
             <option value="Arthritic symptoms">Arthritic symptoms</option>
             <option value="Acute Rhinitis">Acute Rhinitis</option>
             <option value="food poisoning">food poisoning</option>
             <option value="flu symptoms">flu symptoms</option>
             <option value="Liver disease ">Liver disease </option>
             <option value="depression ">depression </option>
             <option value="hair loss ">hair loss </option>
             <option value="anxiety">anxiety</option>
             <option value="Insomnia">Insomnia</option>












             </select><br><br>

            <label for="DETECTED DISEASE"><h2><b>DETECTED DISEASE NAME AND SYMPTOMS </b></h2></label>
            
            
            
            <p style="color:red"><h2><?php
session_start();

$conn = new mysqli( 'localhost','root','','mediherbs');
if(!$conn){
    echo 'not connect';
}


if ( isset($_POST["submit"]) ){

//require_once('connect.php');
$SYMPTOMS=$_POST['SYMPTOMS'];



$query1 = "SELECT *FROM `herbs_info` WHERE Diseases LIKE '%$SYMPTOMS%'";

$result = $conn->query($query1);
if($result->num_rows>0){
  $data = mysqli_fetch_assoc($result);
  echo 'Name_of_Herbs   :';echo $data['Name_of_Herbs']."<br>";
  
  echo "<br>".'USE FOR DISEASES LIKE   :'; echo $data['Diseases']."<br>";
  echo "<br>".'ADVANTAGES    :'; echo $data['ADVANTAGES'];
  echo "<br>".'DISADVANTAGES    :'; echo $data['DISADVANTAGES']."<br>";
  echo "<br>".'HOW TO USE     :'; echo $data['How to use that herb'];
}else
    echo 'not found';

}



?></h2></p>
            <br><br><br>
           
  <button name="submit" class="submitbtn"><b> SUBMIT </b></button> <br>
  
</center>
</form>


</body>

</html>
