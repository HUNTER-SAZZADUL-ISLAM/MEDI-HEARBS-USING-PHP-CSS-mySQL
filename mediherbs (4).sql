-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 12:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediherbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(100) NOT NULL,
  `messages` varchar(300) NOT NULL,
  `response` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `messages`, `response`) VALUES
(4, 'Hi|hello|hy', 'HELLO, HOW CAN I HELP YOU? \r\nIf you want to contact with a Doctor just write down \"Doctor\". \r\nIf you want to know about any herbs just write the name of herbs down.'),
(5, 'doctor| Doctor', 'please call to this number 01766111214'),
(6, 'Is all of your herbs are verified?', 'yes, all of our information\'s are accurate and verified');

-- --------------------------------------------------------

--
-- Table structure for table `disease_detection`
--

CREATE TABLE `disease_detection` (
  `Disease_ID` int(11) NOT NULL,
  `Disease_Name` longtext NOT NULL,
  `Disease_Symptoms` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_detection`
--

INSERT INTO `disease_detection` (`Disease_ID`, `Disease_Name`, `Disease_Symptoms`) VALUES
(1, 'Common_Cold', ' cough, sneezing'),
(1, 'Common Cold', 'cough, sneezing'),
(2, 'Dementia', 'memory loss,\r\ndifficulty concentrating\r\n'),
(3, 'Skin diseases', 'redness, itching'),
(4, 'Eczema', 'Thickening in skin,      hardening in skin.'),
(5, 'obesity', 'High BMI, Over weight.'),
(6, 'Acne', 'Small red bumps , White & Blackheads'),
(7, 'alopecia areata', 'hair is lost from some or all areas of the body,\r\nTingling or pain in the area of Hair loss\r\n'),
(8, 'cholesterol', 'chest pain, extreme fatigue'),
(9, 'Diabetes', 'Urinate (pee) a lot, feel very thirsty'),
(10, 'Insomnia', 'Difficulty falling asleep at night, Difficulty paying attention'),
(11, 'Flu', 'fever or feeling feverish/chills, cough'),
(12, 'Migraine headaches', 'pain on one side of the head, extreme sensitivity to light and sound'),
(13, 'cough', 'Frequent throat clearing and sore throat,A feeling of liquid running down the back of your throat'),
(14, 'high cholesterol', 'High cholesterol has no symptoms. A blood test is the only way to detect if you have it'),
(15, 'Asthma', 'wheezing coughing and chest tightness becoming severe and constant , being too breathless to eat speak or sleep.\r\n'),
(16, 'Weak immunity', 'Feel tired all the time, Have frequent infections '),
(17, 'gastritis', 'Abdominal bloating,\r\nAbdominal pain '),
(18, 'sleep problems', 'difficulty falling or staying asleep,\r\nirritability or anxiety\r\n '),
(19, 'Reduced the swelling of injured tissue', 'pain, swelling and bleeding\r\n '),
(20, 'Gall bladder and Liver disease', 'Abdominal pain and swelling, Swelling in the legs and ankles'),
(21, 'Arthritic symptoms', 'Joint pain- knee or hip pain, Loss of appetite'),
(22, 'Acute Rhinitis', 'Stuffy nose,\r\nPost nasal discharge '),
(23, 'food poisoning', 'Diarrhea (that can be bloody), Fever\r\n '),
(24, 'flu symptoms', 'feeling feverish ,cough\r\n\r\n '),
(25, 'Liver disease ', 'Skin and eyes that appear yellowish (jaundice) , Abdominal pain and swelling\r\n'),
(26, 'depression ', 'Feelings of sadness tearfulness emptiness or hopelessness, Angry outbursts irritability or frustration even over small matters\r\n\r\n'),
(27, 'hair loss ', 'Gradual thinning of hair on the head, Sudden lossing of hair\r\n'),
(28, 'anxiety', 'Restlessness, A sudden feeling of panic and fear\r\n'),
(29, 'Insomnia', 'Extreme  stress, Never ending Stomach Issue \r\n'),
(0, 'PLEASE SELECT ONE ', ''),
(100, 'PLEASE SELECT ONE', '    ');

-- --------------------------------------------------------

--
-- Table structure for table `herbs_info`
--

CREATE TABLE `herbs_info` (
  `HERB_NO` int(100) NOT NULL,
  `Name_of_Herbs` longtext NOT NULL,
  `Diseases` longtext NOT NULL,
  `ADVANTAGES` longtext NOT NULL,
  `DISADVANTAGES` longtext NOT NULL,
  `How to use that herb` longtext NOT NULL,
  `Selected diseases` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `herbs_info`
--

INSERT INTO `herbs_info` (`HERB_NO`, `Name_of_Herbs`, `Diseases`, `ADVANTAGES`, `DISADVANTAGES`, `How to use that herb`, `Selected diseases`) VALUES
(1, 'Tulsi', 'Fever, Common Cold, Diabetes, Infections, Respiratory Problems, Kidneys, Heart diseases.', 'Prevents vomiting, lower blood pressure, cholesterol & blood sugar, anti-asthmatic, liver-protective, antistress, antiallergic.', 'Mild nausea', 'Take 10-12 Tulsi leaves, 1 teaspoon of grated ginger and 7-8 dried kalimirch , Boil water in a pan, add Tulsi, grated ginger and kalimirch and boil for 10 minutes, Add a pinch of black salt and squeeze ½ lemon to it,  Let it stand for 1 minute, Strain and drink warm to manage common cold symptoms', 'COMMON COLD'),
(2, 'Gingko', 'Dementia, Alzheimer’s disease, Inflammatory disease, Diabetes, Anxiety, Depression, Eye problem', 'Boost brain health, Heal bone, Helpful for anxiety and depression', 'Headache, Upset stomach, Dizziness, and Allergic reaction\r\n&\r\nLong-term use may increase chance of thyroid and liver cancer\r\n', '40 milligrams of that Gingko three times daily', 'Dementia,'),
(3, 'Turmeric', 'Skin diseases, Inflammatory disease, Cancer', 'Reduce arthritis pain, stopping DNA mutations, consuming with pepper can help your body absorb more of its benefits.', 'Long-term use can potentially cause stomach problems.', 'mix small amounts of Greek yogurt, honey, and turmeric together and apply to your face. Keep the mask on for 15 minutes and then wash off with water.', 'Skin_diseases'),
(4, 'Evening primrose oil', 'atopic dermatitis (a type of eczema), Blood pressure, PMS, Inflammatory disease, Diabetic neuropathy, PCOS', 'Good for mild skin condition, inflammation, menopause', 'interacts with some blood-clotting medications, long term use may not be safe.', 'apply 1 milliliter (mL) of 20 percent EPO to the skin twice daily for up to four months.', 'eczema'),
(5, 'Flax Seed', 'Colon Cancer, Blood pressure, Reducing obesity', 'Beneficial for hot flashes, inflammation', 'It can affect estrogen production in women.\r\nDon’t eat raw or unripe flax seeds, as they can be toxic\r\n', '1-2 tablespoons a day is considered a healthy amoun', 'obesity'),
(6, 'Tea Tree', 'Acne, Dandruff, Insect bites', 'beneficial for skin conditions, athlete’s foot, small wounds, topical infections, and other inflammatory skin conditions.', 'Tea tree oil is poisonous if taken orally, allergic reaction, influence hormones.\r\nLong-term use isn’t recommended.\r\n', 'Gently apply diluted tea tree oil by dabbing it on your blemishes with a cotton round or pad. Allow to dry. Follow up with your usual moisturizer. Repeat morning and night.', 'Acne'),
(7, 'Lavender', 'Migraine, Blood pressure, Anxiety, alopecia areata', 'Directly impact mood and cognitive performance, Anti-inflammatory', 'skin irritation, may disrupt hormones when applied undiluted.', 'To encourage hair growth using lavender oil you can add a few drops to a carrier oil and use it to massage your scalp or add a few drops to your favourite shampoo or conditioner.', 'alopecia areata'),
(8, 'Grapeseed', 'Cancer, LDL cholesterol, Edema, Blood pressure', 'Reduce poor circulation in the leg veins, Antioxidants', 'It may reduce iron absorption.', 'To take advantage of this natural compound for lowering blood pressure and cholesterol, look for grape (vitis vinifera) seed extract, standardized to contain at least 92%-95% polyphenols (including OPCs). The proper grape seed extract dosage is to take 300 mg once a day or split the dose.', 'cholesterol'),
(9, 'Aloe vera', 'Wound, Mouth ulcers, Diabetes, Constipation', 'Anti-oxidant, anti-bacterial, Protect from UV & skin damage', 'oral use of aloe vera may cause stomach cramps or diarrhea due to its laxative effects.', 'Ingesting two tablespoons of aloe vera juice per day can cause blood sugar levels to fall in people with type 2 diabetes', 'Diabetes'),
(10, 'Chamomile', 'Cancer, Insomnia', 'Anti-anxiety, Anti-Stress', 'Allergic reactions, interact with blood thinners.', 'drink one cup of chamomile tea about 45 minutes before bed if you\'re hoping to induce sleepiness. That will give your body enough time to metabolize the tea, and the chemical compounds that cause those sedative feelings to kick in.', 'Insomnia'),
(11, '\r\nEchinacea\r\n(Leaf, stalk, root)\r\n\r\n', 'colds, flu, and infections, and for wound healing', 'prevent colds, flu, and infections, and for wound healing.', 'long-term use can affect the body\'s immune system', 'leaves, stems, flower, and roots are used to make supplements, liquid extracts, ', 'Flu'),
(12, 'Feverfew\r\n(Leaf)\r\n', 'migraines and treat arthritis', 'migraines', 'mouth ulcers if the leaves are chewed and digestive irritation', 'Take 100–300 mg, up to 4 times daily, standardized to contain 0.2–0.4% parthenolides. ', 'migraine headaches'),
(13, 'Ginger', 'cough  ,easing nausea and motion sickness', 'motion sickness', 'bloating, gas, heartburn, and nausea', 'chew a few slices of raw ginger at least 2-3 times a day,', 'cough'),
(14, 'Garlic', 'high cholesterol, antimicrobial, cardioprotective, anticancer and anti-inflammatory', 'anticancer and anti-inflammatory', 'increase the risk of bleeding. not be used with warfarin, a blood thinner', 'A 2016 review of studies on garlic determined that garlic has the potential to reduce total cholesterol up to 30 milligrams per deciliter (mg/dL).\r\nTry simmering whole cloves of garlic in olive oil until they’re soft, and use them as a spread on foods you find bland. Garlic tastes better than butter, and it’s a whole lot healthier particularly for lowering cholesterol.\r\n', 'high cholesterol'),
(15, 'Gingko', 'asthma, bronchitis, fatigue, and tinnitus', 'improve memory and to prevent dementia and other brain disorders', 'ginkgo can increase the risk of bleeding', 'For asthma, 120 to 240 mg of standardized ginkgo or 3 to 4 ml of regular tincture three times daily can be used', 'asthma'),
(16, 'Ginseng\r\n(Root)\r\n', 'Weak immunity.', 'null', 'high blood pressure and tachycardia.', 'daily doses of 1–2 g of raw ginseng root or 200–400 mg of extract are suggested', 'Weak immunity.'),
(17, 'Goldenseal\r\n(Root, rhizome)\r\n', 'digestive disorders such as gastroenteritis (GI disease), gastritis, and peptic ulcers.', 'diarrhea and eye', 'skin, mouth, throat, and gastric irritation', 'Goldenseal can be consumed as a tea by steeping 2 teaspoons of the dried herb in 1 cup (240 mL) of hot water for about 15 minutes', 'gastritis'),
(18, 'Valerian\r\n(Root)\r\n', 'treat sleeplessness and to reduce anxiety', 'Treat sleeplessness', 'headache, dizziness, stomach problems may occur', 'Valerian root comes in several different forms including extract powders, capsules, liquid, or as a dried herb used in tea. When using valerian root for sleep, try soaking 3 grams of the dried leaves in approximately 1 cup of hot water for 15 minutes. Remove the root and enjoy', 'sleep problems'),
(19, 'GoldenRod', 'tuberculosis, diabetes, enlargement of the liver, gout, hemorrhoids, internal bleeding, asthma, and arthritis', 'menstruation', 'heartburn', 'Supplemental use should be individualized and vetted by a healthcare professional, such as a registered dietitian, pharmacist, or healthcare provider. No supplement is intended to treat, cure, or prevent disease.', 'reduced the swelling of injured tissue'),
(20, 'Pennyroyal', 'cold, breathing problems, gall bladder and liver disease,', 'deal with cold, breathing problems, gall bladder and liver disease,', 'Abortion in pregnancy ', 'If you choose to use pennyroyal, use it as directed on the package or as directed by your doctor, pharmacist, or other healthcare provider. Do not use more of this product than is recommended on the label.', 'gall bladder and liver disease'),
(21, 'Woodruffe (Sweet)', 'Arthritic symptoms. it can strengthen the stomach and removes obstructions from the colon.', 'insomnia', 'nill', 'Studies suggest the safety limit for preparation of spiced wine is less than 5 ppm of coumarin, which corresponds to 3 to 3.5 g of fresh woodruff per liter of beverage.', 'Arthritic symptoms'),
(22, 'Yarrow', 'acute rhinitis ,wounds, cuts, and abrasions', 'allergic mucus problems, including hay fever.', 'nill', 'nill', 'acute rhinitis'),
(23, 'Thyme', ' natural mosquito repellent,\r\nprevent winter colds and flu.\r\n', 'tummy remedies', 'nill', 'Gently rub thyme leaves over your arms and clothing. The crushed leaves will release their oils and keep mosquitoes away', 'natural mosquito repellent'),
(24, 'Cilantro', 'food poisoning , removing heavy metals and other toxic agents from the body', 'Removes toxic metals from body', 'null', 'Cilantro is the leaf part of the coriander plant. Researchers have found the oil to be particularly effective as an antibacterial agent. They also found the oil was able to kill the bacteria by it disrupting the bacterial membrane and preventing food poisoning', 'food poisoning'),
(25, 'Elderberry', 'cold and flu symptoms', 'Treats cold and flu', 'it’s toxic if eaten raw or unripe', 'a recommended serving size of elderberry syrup is 2 teaspoons (10 milliliters) per day containing 3.8 grams of elderberry.\r\n\r\nFor lozenges, one manufacturer recommends taking 1 lozenge (4 grams) containing 12 milligrams as needed up to four times per day.\r\n', 'flu symptoms'),
(26, 'Milk thistle', 'treat liver conditions and high cholesterol, and to reduce the growth of cancer cells', 'high cholesterol, and to reduce the growth of cancer cells', 'null', 'Milk thistle can be used in high doses to stimulate a natural liver detox. About 150 milligrams of milk thistle, taken three times daily, qualifies as a high dosage. To achieve ongoing liver support, try taking 50 to 250 milligrams daily. The easiest way to start benefiting from milk thistle is to take it as a supplement or tea', 'Liver disease '),
(27, 'Saint John\'s wort', 'depression ,\r\nantidepressant.\r\n', 'null', 'small effect on mild to moderate depression over a period of about 12 weeks. But it is not clear if it is effective for severe depression. A side effect is sensitivity to light, but this is only noted in people taking large doses of the herb. St. John\'s has been shown to cause dangerous and possibly deadly interactions with commonly used medicines.', 'Those who deal with depression must take 1 teaspoon of St. John’s Wort tincture and mix it with half glass of water. The solution must be consumed before every meal, 3 or 4 times per day', 'depression'),
(28, 'Saw palmetto', 'hair loss , used to treat urine symptoms from benign prostatic hypertrophy (BPH)', 'treat urine symptoms from benign prostatic hypertrophy (BPH)', 'digestive upset and headache, both mild.', 'Thus, capsules and tablets containing saw palmetto extract are the best bet for using this plant’s power to treat alopecia. The recommended adult dosage is between 160 milligrams and 200 milligrams per dose, taken twice daily.', 'hair loss'),
(29, 'Lemon balm', 'Calms the Mind, improves sleep, Boosts Alertness, Mosquito Repellant, Boosts Immune System.', 'null', 'increased appetite, nausea, dizziness, and wheezing.', 'Take 300 to 600 mg of lemon balm three times per day. You can take a higher dose in acute episodes of anxiety.\r\nYou can drink it inside a tea, take it as a supplement or extract, or rub it on the skin in the form of balms and lotion. Lemon balm essential oil is also popular in aromatherapy. It can help relieve stress and keep you calm.\r\n', 'anxiety'),
(30, 'Black Cumin', 'boost the immune system, fight cancer, prevent pregnancy, reduce swelling, and lessen allergic reactions by acting as an antihistamine.', 'different airway disorders, for pain such as chronic headache and back pain, diabetes, paralysis, infection, inflammation, hypertension, and digestive tract related problems', 'allergic rashes', 'Black Cumin is available both in oil and capsule form. It is used in alternative medicine to treat many health conditions. The oil supplement treats issues like arthritis and weight loss and lowers sugar and cholesterol levels.\r\nNonetheless, you should consult your healthcare provider to ensure this supplement is safe for you. \r\nThe Black Cumin seed is rich in nutrients and minerals and is highly effective in treating arthritis, diabetes, weight loss, menstrual issues, and allergies\r\n', 'Weak  immune system');

-- --------------------------------------------------------

--
-- Table structure for table `userinf1`
--

CREATE TABLE `userinf1` (
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinf1`
--

INSERT INTO `userinf1` (`FirstName`, `LastName`, `email`, `age`, `phone`, `password`) VALUES
('sanjida', 'lima', 'sanjida1@gmail.com', 22, '111233333343', '123'),
('labony', 'hossion', 'labony1@gmail.com', 22, '34567892233', '234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herbs_info`
--
ALTER TABLE `herbs_info`
  ADD PRIMARY KEY (`HERB_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `herbs_info`
--
ALTER TABLE `herbs_info`
  MODIFY `HERB_NO` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
