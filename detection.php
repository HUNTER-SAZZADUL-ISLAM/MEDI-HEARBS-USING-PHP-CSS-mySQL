

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Create Page </title>
  <link rel="stylesheet" href="detection.css">
  <div class="container">

<form action="" method="POST">
  <center><b><h1 style="font-size:90px;"> DISEASE DETECTION </h1></b>
    <p><h3 style="font-size:45px;"><i> Please select in this form to DETECT DISEASE.</i></h3></p>

   
      
            <label for="SYMPTOMS"><h2><b>SELECT SYMPTOPS GIVEN BELOW:</b></h2></label>
             <select name="SYMPTOMS"id="SYMPTOMS">
             
             <option value="PLEASE SELECT ONE">PLEASE SELECT ONE</option>
             <option value="cough, sneezing">cough, sneezing</option>
                    <option value="memory loss,
difficulty concentrating">memory loss,
difficulty concentrating</option>
                    <option value="redness, itching">redness, itching</option>
                    <option value="Thickening in skin,      hardening in skin.">Thickening in skin,      hardening in skin.</option>
                    <option value="High BMI, Over weight.">High BMI, Over weight.</option>
                    <option value="Small red bumps , White & Blackheads">Small red bumps , White & Blackheads</option>
                    <option value="hair is lost from some or all areas of the body,">hair is lost from some or all areas of the body,</option>
                    <option value="chest pain, extreme fatigue">chest pain, extreme fatigue</option>
                    <option value="Urinate (pee) a lot, feel very thirsty">Urinate (pee) a lot, feel very thirsty</option>
                    <option value="Difficulty falling asleep at night,">Difficulty falling asleep at night,</option>
                    <option value="fever or feeling feverish/chills">fever or feeling feverish/chills</option>
                    <option value="pain on one side of the head">pain on one side of the head</option>
                    <option value="Frequent throat clearing and sore throat">Frequent throat clearing and sore throat</option>
                    <option value="High cholesterol">High cholesterol</option>
                    <option value="wheezing coughing and chest tightness">wheezing coughing and chest tightness</option>
                    <option value="Feel tired all the time, Have frequent infections ">Feel tired all the time, Have frequent infections </option>
                    <option value="Abdominal bloating,
Abdominal pain ">Abdominal bloating,
Abdominal pain </option>
                    <option value="difficulty falling or staying asleep,">difficulty falling or staying asleep,</option>
                    <option value="pain, swelling and bleeding">pain, swelling and bleeding</option>
                    <option value="Abdominal pain and swelling, Swelling in the legs">Abdominal pain and swelling, Swelling in the legs</option>
                    <option value="Joint pain- knee or hip pain, Loss of appetite">Joint pain- knee or hip pain, Loss of appetite</option>
                    <option value="Stuffy nose,
Post nasal discharge ">Stuffy nose,
Post nasal discharge </option>
                    <option value="Diarrhea (that can be bloody), Fever">Diarrhea (that can be bloody), Fever</option>
                    <option value="feeling feverish ,cough">feeling feverish ,cough</option>
                    





















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



$query1 = "SELECT *FROM `disease_detection` WHERE Disease_Symptoms LIKE '%$SYMPTOMS%'";

$result = $conn->query($query1);
if($result->num_rows>0){
  $data = mysqli_fetch_assoc($result);
  echo 'Disease_Name   :';echo $data['Disease_Name']."<br>";
  
  echo 'Disease_Symptoms   :'; echo $data['Disease_Symptoms'];
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
