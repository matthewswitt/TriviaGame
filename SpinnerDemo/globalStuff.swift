//
//  globalStuff.swift
//  MAImageSpinner
//
//  Created by Matthew Switt on 2020-12-29.
//  Copyright © 2020 Morshed Alam. All rights reserved.
//

import Foundation

//global variables
var shuffledarray: [String] = []
var correctForStory = 0
var livesLeft = 3
var randomNumber: Int = 0
var playerONENAME: String = ""
var playerTWONAME: String = ""
var playerOneScore = 0
var playerTwoScore = 0
var playerOnesTurn = true
var playerTwosTurn = false
var whosturn = ""
var correct = true
var levelOne = true
var levelTwo = false
var levelThree = false
var levelFour = false
var levelFive = false
var levelSix = false
var levelSeven = false
var levelEight = false
var levelNine = false
var levelTen = false
var levelEleven = false
var levelTwelve = false
var levelThirteen = false
var levelFourteen = false
var levelFifteen = false
var levelSixteen = false
var levelSeventeen = false
var levelEighteen = false
var levelNineteen = false
var levelTwenty = false
var numbers2 = [0,1,2,3,4,7]
var shuffledNumbers2: [Int] = []
var rand2 = Int()
var currentLevel = 1

//math array questions
var mathArray = ["What do you call an angle more than 180 degrees?", "What number vertically stretches or compresses a quadratic function? f(x) = 1f(2(x-3)) + 4", "What's a polygon with all equal sides and two parallel lines?", "What number does 'giga' stand for?", "How many faces does an icosahedron have?", "What word is defined in geometry as a straight line that touches a curve but continues on with crossing it?", "What's short for binary digit?", "If 20 people are drinking beer, 16 are eating fish, and 12 are doing both, what fraction of the people are eating fish and drinking beer?", "Given f(x) = 2(x-1)^2 - 5, what is the vertex and direction of opening?", "Simplify 5√27 + 4√48", "If b^2 − 4ac < 0, how many roots are there?", "What is a characteritic of an asymptote?", "What is the sin(45)?", "What is 360 degrees in radians?", "What does 1 - cos^2x equal?", "What is the equation for the amplitude of a periodic function?", "What is a geometric sequence?", "What is the chance of landing heads 3 times in a row?", "What is a polynomial?", "Which is not a function?", "What is the degree of the polynomial 2x^5 - y^2 + 34z^7?", "What is the formula for profit?", "A duck was given $10, a spider was given $40 and an ant was given $30, how much money would a dog get?", "Eggs are $0.24 a dozen. How many eggs can you get for a dollar?", "In an alien land far away, half of 10 is 6. If the same proportion holds true, then what is 1/6th of 30"]
var shuffledMathArray: [String] = []

//all the answers for math
var answersMath1: [String] = ["Reflex", "Obtuse", "Acute", "Right"]
var answersMath2: [String] = ["Value of 1", "Value of 2", "Value of 3", "Value of 4"]
var answersMath3: [String] = ["Trapezium", "Rectangle", "Rhombus", "Pentagon"]
var answersMath4: [String] = ["10^9", "10^6", "10^12", "10^10"]
var answersMath5: [String] = ["20", "13", "11", "17"]
var answersMath6: [String] = ["Tangent", "Asymptote", "Parallel", "Perpendicular"]
var answersMath7: [String] = ["Bit", "Bin", "Digit", "Hexadecimal"]
var answersMath8: [String] = ["12/36", "36/48", "20/48", "12/48"]
var answersMath9: [String] = ["(1, -5), Up", "(-1, -5), Up", "(1, -5), Down", "(-1, -5), Down"]
var answersMath10: [String] = ["31√3", "31√6", "11√3", "15√3 + 16√2"]
var answersMath11: [String] = ["0", "1", "2", "None of the above"]
var answersMath12: [String] = ["A value that a line never will touch", "Occurs in exponential functions", "Involves a curved line", "All of these"]
var answersMath13: [String] = ["1/√2", "√2/2", "1/2", "1/√3"]
var answersMath14: [String] = ["2π", "π", "1/2π", "3/2π"]
var answersMath15: [String] = ["sin^2x", "cosx", "tan^2x", "csc^2x"]
var answersMath16: [String] = ["(min+max)/2", "(min-max)/2", "min+max", "min-max"]
var answersMath17: [String] = ["Increases or decreases by a common multiple", "Increases or decreases by a common difference", "Sequence does not change", "None of the above"]
var answersMath18: [String] = ["1/8", "1/4", "1/16", "1/32"]
var answersMath19: [String] = ["Monomial", "Binomial", "Trinomial", "All of these"]
var answersMath20: [String] = ["f(x) = x", "(x-h)^2 + (y-k)^2 = 25", "f(x) = 2(x-1)^2 - 345", "All are functions" ]
var answersMath21: [String] = ["7", "2", "5", "3"]
var answersMath22: [String] = ["Revenue - Cost", "Cost - Gross Income", "Gross Income + Revenue", "Net Income - Gross Income"]
var answersMath23: [String] = ["$20", "$10", "$100", "$40"]
var answersMath24: [String] = ["50", "100", "150", "200"]
var answersMath25: [String] = ["6", "5", "10", "8"]

//questions for science
var scienceArray = ["What is the equation for cellular respiration?", "Which is the hottest planet in the Solar System?", "What does bile do in your body?", "What does an speleologist study?", "What symbol does Pu stand for?", "What’s the only liquid metal?", "Which physical property of light gives rise to our experience of color?", "Which part of the eye responds to light?", " Where are the metatarsal bones?", "Which animal has the largest heart of any land mammal?", "What is the first sense a baby develops?", "Which vitamin is especially important for the formation of collagen?", "What’s the name of the largest known star?", "What are the building blocks of proteins?", "What visible light affects the eyes the least?", "Who was Copernicus?", "Scientists believe that the shark was the first animal to develop what?", "What is Avogadro's number equal to?", "What reactants produce salt and water?", "What do we use our strongest muscles for?", "How many stomachs do cows have?", "What phenomenom creates rainbows?", "What is found at the core of the Earth?", "Why don't antibiotics kill all bacteria?", "Which is the most abundant gas in the earth's atmosphere?"]
var shuffledScienceArray: [String] = []

//answers for science questions
var answersScience1: [String] = ["C6H12O6 + 6O2 -> 6CO2 + 6H2O + ATP", "6CO2 + 6H2O + ATP -> C6H12O6", "C6H12O6 + 6O2 -> 18CO2", "C6H12O6 + O2 -> CO2 + H2O + ATP"]
var answersScience2: [String] = ["Venus", "Mars", "Saturn", "Jupiter"]
var answersScience3: [String] = ["Emulsify fats", "Helps make the chyme more liquidy", "Aids in absorbing nutrients", "None of these"]
var answersScience4: [String] = ["Caves", "Mountains", "Animal Behaviour", "Bacteria"]
var answersScience5: [String] = ["Plutonium", "Promethium", "Palladium", "Platinum"]
var answersScience6: [String] = ["Mercury", "Silver", "Technetium", "Zirconium"]
var answersScience7: [String] = ["Wavelength of light", "Frequency of light", "Quantum energy of light", "Speed of light"]
var answersScience8: [String] = ["Retina", "Iris", "Cornea", "Sclera"]
var answersScience9: [String] = ["The foot", "The fingers", "The ears", "The nose"]
var answersScience10: [String] = ["Giraffe", "Bear", "Lion", "Elephant"]
var answersScience11: [String] = ["Touch", "Taste", "Sight", "Smell"]
var answersScience12: [String] = ["Vitamin C", "Vitamin D", "Vitamin A", "Vitamin K"]
var answersScience13: [String] = ["Canis Majoris", "Scuti", "G64", "Westerlund"]
var answersScience14: [String] = ["Amino acids", "Ribonucleic acid", "Proteases", "Lipases"]
var answersScience15: [String] = ["Red", "Blue", "Green", "Violet"]
var answersScience16: [String] = ["He formulated the heliocentric model", "He proposed the theory of evolution", "He proposed that our earth is round", "He proposed the law of conservation of mass"]
var answersScience17: [String] = ["Teeth", "Gills", "Pelvic fins", "Caudal fins"]
var answersScience18: [String] = ["6.02 x 10^23", "5.01 x 10^21", "3.0 x 10^8", "6.02 x 10^21"]
var answersScience19: [String] = ["Acid and a base", "Metal and a non metal", "Metal and an acid", "Metal and a base"]
var answersScience20: [String] = ["Chewing", "Running", "Lifting", "Sleeping"]
var answersScience21: [String] = ["4", "1", "2", "8"]
var answersScience22: [String] = ["Refraction", "Reflection", "Diffraction", "Deflection"]
var answersScience23: [String] = ["Iron and nickel", "Nickel and copper", "Copper and gold", "Gold and silver"]
var answersScience24: [String] = ["Mutations in the genetic code", "Not enough antibiotics ingested", "Escape the antibiotic", "None of the above"]
var answersScience25: [String] = ["Nitrogen", "Oxygen", "Carbon dioxide", "Helium"]

//geography questions
var geographyArray: [String] = ["Where is the Eiffel Tower?", "What province is Regina in?", "What is Earth's largest continent?", "What river runs through Baghdad?", "What country has the most natural lakes?", "What is the driest place on Earth?", "Which African nation has the most pyramids?", "What is the oldest city in the world?", "What country has the most coastlines?", "What is the flattest continent?", "What is the largest country in South America?", "What is the tallest mountain in the world?", "What city is the capital of Australia?", "What is the deepest point in Earth's oceans?", "What is the highest waterfall in Europe?", "What U.S. state shares borders with Louisiana, Arkansas, Oklahoma, and New Mexico?", "What is the northernmost state in the United States?", "What ocean is home to 75% of the Earth's volcanoes?", "What is the largest city in the world based on surface area?", "What river runs through Paris?", "How many countries are there in Africa?",  "What is the least populated U.S. state?", "What is the smallest independent country on Earth?", "What Canadian province boasts the longest freshwater beach in the world?", "What is the longest river in Canada?"]
var shuffledGeographyArray: [String] = []

//geography answers for questions
var geoAnswer1: [String] = ["Paris, France", "Toronto, Canada", "Las Vegas, U.S", "Sydney, Australia"]
var geoAnswer2: [String] = ["Saskatchewan", "Ontario", "Manitoba", "British Columbia"]
var geoAnswer3: [String] = ["Europe", "Asia", "Africa", "Antartica"]
var geoAnswer4: [String] = ["Karun", "Jordan", "Tigris", "Euphrates"]
var geoAnswer5: [String] = ["Canada", "Italy", "India", "United States"]
var geoAnswer6: [String] = ["Sahara Desert", "Kurfra, Libya", "McMurdo, Antartica", "Atacama Desert"]
var geoAnswer7: [String] = ["Sudan", "Libya", "Algeria", "Egypt"]
var geoAnswer8: [String] = ["Athens", "Jerusalem", "Damascus", "Jericho"]
var geoAnswer9: [String] = ["Canada", "China", "United States", "Russia"]
var geoAnswer10: [String] = ["South America", "Antarctica", "Africa", "Australia"]
var geoAnswer11: [String] = ["Brazil", "Peru", "Argentina", "Columbia"]
var geoAnswer12: [String] = ["Mount Kilamanjaro", "Aconcagua", "Mount Everest", "Qogir"]
var geoAnswer13: [String] = ["Melbourne", "Sydney", "Canberra", "Perth"]
var geoAnswer14: [String] = ["Mariana Trench", "Tonga Trench", "Java Trench", "Eurasian Basin"]
var geoAnswer15: [String] = ["Kjelfossen", "Rhine", "Krimml", "Triberg"]
var geoAnswer16: [String] = ["Texas", "Missouri", "Kansas", "Colorado"]
var geoAnswer17: [String] = ["Washington", "Alaska", "California", "Maine"]
var geoAnswer18: [String] = ["Atlantic", "Indian", "Pacific", "Arctic"]
var geoAnswer19: [String] = ["Shanghai", "Hulunbuir", "Dhaka", "Mumbai"]
var geoAnswer20: [String] = ["Thames", "Seine", "Danube", "Elbe"]
var geoAnswer21: [String] = ["28", "32", "43", "54"]
var geoAnswer22: [String] = ["Rhode Island", "Wyoming", "Delaware", "Montana"]
var geoAnswer23: [String] = ["Grenada", "Monaco", "Nauru", "Vatican City"]
var geoAnswer24: [String] = ["Ontario", "Nova Scotia", "Newfoundland and Labrador", "Nunavut"]
var geoAnswer25: [String] = ["Mackenzie", "Columbia", "Yukon", "St. Lawrence"]

//sports questions
var sportsArray: [String] = ["How many players per team are there in court in handball?", "What’s the name of the field hockey move when the ball is lifted with the stick?", "Which baseball player is behind the batter?", "How many squares are there in a chess board?", "How long is a basketball game?", "What is the name given to the NFL final?", "Which of the following types of hockey does not exist?", "Which team did Alex Ferguson manage?", "When did the FIFA World Cup take place in the USA?", "Which of these positions does not exist in a basketball game?", "What is the world’s most popular and most played sport?", "Which team won the Baseball World Series of 2013?", "What number did Michael Jordan play as on the Chicago Bulls?", "Which ball is the smallest?", "What is Tiger Woods real name?", "What year were the first modern Olympics Games held?", "What country is Taekwondo originally from?", "How many positions are there in Volleyball?", "How many goals did Germany score in the 2014 World Cup Against Brazil?", "When's the last time the leafs won the Stanley Cup?", "Who hit a walk-off home run to win the 1993 World Series?", "What sport do the Miami Dolphins practice?", "Which is the most successful team in the Champions League?", "How many chess pawns are in a chess game?", "Will the Raptors win this year?"]
var shuffledSportsArray: [String] = []

//answers for sports questions
var sportsAnswer1: [String] = ["9", "5", "7", "8"]
var sportsAnswer2: [String] = ["Curve", "Flick", "Shot", "Canal"]
var sportsAnswer3: [String] = ["Catcher", "Outfeilder", "Pitcher", "Batman"]
var sportsAnswer4: [String] = ["68", "53", "60", "64"]
var sportsAnswer5: [String] = ["25", "40", "45", "48"]
var sportsAnswer6: [String] = ["Super Bowl", "NFL Champion", "Frank's Champion", "Blast Bowl"]
var sportsAnswer7: [String] = ["Asphalt hockey", "Floor hockey", "Ice hockey", "Street hockey"]
var sportsAnswer8: [String] = ["Manchester United", "Liverpool", "Chelsea", "Raptors"]
var sportsAnswer9: [String] = ["1998", "2002", "2006", "1994"]
var sportsAnswer10: [String] = ["Fullback", "Point guard", "Center", "Power Forward"]
var sportsAnswer11: [String] = ["Soccer", "Cricket", "Baseball", "Hockey"]
var sportsAnswer12: [String] = ["Boston Red Sox", "Toronto Bluejays", "New York Yankees", "Oakland Athletics"]
var sportsAnswer13: [String] = ["23", "99", "00", "10"]
var sportsAnswer14: [String] = ["Golf ball", "Tennis Ball", "Basketball", "Foot ball"]
var sportsAnswer15: [String] = ["Eldrick Woods", "John Woods", "Tyreese Woods", "Mike Woods"]
var sportsAnswer16: [String] = ["1893", "1799", "1863", "1896"]
var sportsAnswer17: [String] = ["China", "Thailand", "Korea", "Bangkok"]
var sportsAnswer18: [String] = ["6", "5", "8", "12"]
var sportsAnswer19: [String] = ["7 goals", "5 goals", "6 goals", "12 goals"]
var sportsAnswer20: [String] = ["1967", "1995", "1972", "1980"]
var sportsAnswer21: [String] = ["Joe Carter", "Jose Bautista", "John Cena", "Babe Ruth"]
var sportsAnswer22: [String] = ["Football", "Baseball", "Basketball", "Major Leuge Soccer"]
var sportsAnswer23: [String] = ["Barcelona", "Real Madrid", "PSG", "Toronto FC"]
var sportsAnswer24: [String] = ["16", "18", "14", "22"]
var sportsAnswer25: [String] = ["Yes", "Yes", "Yes", "Yes"]

//history questions
var HistoryArray: [String] = ["Which of the following was an ally of the Russian Empire during the First World War?", "What city was divided in two after the Second World War?", "Where was Jesus of Nazareth born?", "Who in 1964, was the first person other than royalty, to appear on a British postage stamp?", "What year did the Titanic sink?", "What is the name of Prince Williams son?", "What were the names given to the atomic bombs of Hiroshima and Nagasaki?", "Which civilization constructed the Machu Picchu?", "What was the name Romans gave to Great Britain?", "Who was the first president of the United States?", "Who is the Greek goddess of love?", "What animal did the ancient Egyptians consider gods?", "What year was the United Nations formed?", "In Greek mythology, who is the father of Zeus, Poseidon and Hades?", "Where did Hitler write ‘Mein Kampf’?", "Who said ‘I have a dream’?", "Who was the first US President to resign from office?", "What year did New York’s Twin Towers fall?", "Which countries were part of the Grand Alliance during Second World War?", "Which of the following is not a religion?", "When was the Declaration of Independence of the United States adopted?", "Who took over most of Europe during the 194Os?", "Which two countries reunited in 1976 after 22 years of separation?", "Who was the first king of England?", "How many years did the Hundred Years’ War last?"]
var shuffledHistoryArray: [String] = []

//answers for history questions
var historyAnswers1: [String] = ["France", "Germany", "Austro-Hungarian Empire", "Italy"]
var historyAnswers2: [String] = ["Berlin", "Dresden", "Hamburg", "Poznan"]
var historyAnswers3: [String] = ["Bethlehem", "Jerusalem", "Israel", "Beit-Jala"]
var historyAnswers4: [String] = ["Shakespeare", "George Washington Carver", "John Jacob Astor IV", "Alfred Stieglitz"]
var historyAnswers5: [String] = ["1912", "1812", "1911", "1811"]
var historyAnswers6: [String] = ["George", "Louis", "William", "Harry"]
var historyAnswers7: [String] = ["Little Boy and Fat Man", "The Dynamic Duo", "Revenge", "Big Brothers"]
var historyAnswers8: [String] = ["Incas", "Mayan", "Egyptian", "Mesopotamia"]
var historyAnswers9: [String] = ["Britannia", "Caledonia", "Achaea", "Britannica"]
var historyAnswers10: [String] = ["George Washington", "John F Kennedy", "Abraham Lincoln", "Benjamin Franklin"]
var historyAnswers11: [String] = ["Aphrodite", "Artemis", "Athena", "Eris"]
var historyAnswers12: [String] = ["Cats", "Dogs", "Monkeys", "Birds"]
var historyAnswers13: [String] = ["1945", "1935", "1940", "1938"]
var historyAnswers14: [String] = ["Kronos", "Ares", "Hera", "Achilles"]
var historyAnswers15: [String] = ["In prison", "During WW2", "In his childhood home", "Worked on it in all these places"]
var historyAnswers16: [String] = ["Martin Luther King, Jr", "Nelson Mandela", "Jackie Robinson", "Rosa Parks"]
var historyAnswers17: [String] = ["Richard Nixon", "Abraham Lincoln", "John Adams", "Jason Madison"]
var historyAnswers18: [String] = ["2001", "2011", "1991", "2000"]
var historyAnswers19: [String] = ["Great Britain, USA and Russia", "USA, Canada and Great Britain", "Italy, France and Japan", "Great Britain, Canada and Russia"]
var historyAnswers20: [String] = ["Darwinism", "Catholicism", "Protestantism", "Islam"]
var historyAnswers21: [String] = ["July 4th, 1776", "June 4th, 1776", "July 4th, 1876", "June 4th, 1876"]
var historyAnswers22: [String] = ["Hitler", "Mussolini", "Stalin", "Kim Jong-Un"]
var historyAnswers23: [String] = ["North and South Vietnam", "North and South Italy", "North and South Korea", "East and West Germany"]
var historyAnswers24: [String] = ["King William", "King Harry", "King Louis", "None of these"]
var historyAnswers25: [String] = ["116", "100", "107", "115"]

//GOT questions
var GOTArray: [String] = ["Who is John Snow's real identity?", "How old are Arya and Sansa at the beginning of Season 1?", "Who was responsible for the creation of the Night King?", "What was Hodor called before he got his tragic door-holding nickname?", "Who was the leader of the Golden Company sellswords when Dany ransacked King's Landing?", "Dany's dragons were called Viserion, Drogon and who?", "What is the Iron Bank's representative, played by Mark Gatiss, called?", "How many kings and queens of Westeros did Lord Varys serve?", "What's the name of the explosive that gave the Lannisters the edge in the Battle of Blackwater?", "What is the official Lanister family motto name?", "How did Daenerys Targaryen eventually hatch her dragon eggs?", "Which U.S. city was one of 8 international locations visited by the 2015 'Game of Thrones' Exhibition?", "The phrase 'Valar Morghulis' or 'all men must die' is usually responded with:", "What is the only thing that can put out volatile Wildfire?", "Besides dragonglass, what is the only other substance capable of defeating White Walkers?", "How many times has Beric Dondarrion been brought back to life?", "Which Stark family direwolf was killed in retaliation for an attack on Prince Joffrey?", "Arya's punishment for stealing from the Many-Face God is:", "'It's nothing' were the last words of this infamous character:", "The name of King Tommen's favorite cat is:", "What was the name of Ned Stark's greatsword?", "Who shoots the flaming arrow that subsequently destroy's Stannis' fleet in Blackwater Bay?", "Prince Oberyn Martell is nicknamed the 'Red Viper' because of his combat and:", "What is Sansa Stark's favorite treat?", "Dead creatures revived by White Walkers are known as:"]
var shuffledGOTArray: [String] = []

//answers for GOT questions
var GOTanswers1: [String] = ["Aegon Targaryen", "John Stark", "The Night King", "A Whitewalker"]
var GOTanswers2: [String] = ["11 and 13", "8 and 9", "16 and 19", "12 and 14"]
var GOTanswers3: [String] = ["Children of Forest", "Lord of Light", "The Drowned God", "The first men"]
var GOTanswers4: [String] = ["Wylis", "Horys", "Myths", "William"]
var GOTanswers5: [String] = ["Harry Strickland", "Wes Borland", "Robert Westland", "Kiefer Sutherland"]
var GOTanswers6: [String] = ["Rhaegal", "Viserys", "Aegar", "Argon"]
var GOTanswers7: [String] = ["Tycho Nestoris", "Howard from the Halifax", "Xaro Xhoan Daxon", "Quorin Halfhand"]
var GOTanswers8: [String] = ["4", "2", "3", "5"]
var GOTanswers9: [String] = ["Wildfire", "Hellfire", "Dragonfire", "Greenfire"]
var GOTanswers10: [String] = ["Hear me roar", "A lannister always pays his debts", "Power is power", "Fire and blood"]
var GOTanswers11: [String] = ["In a funeral pyre", "In a lightning storm", "In a fireplace", "In a frozen cave"]
var GOTanswers12: [String] = ["San Diego", "Chicago", "New York City", "Boston"]
var GOTanswers13: [String] = ["Valer Dohaeris or 'all men must serve'", "Valar Rohnas or 'all men must live'", "Valar GoGo or 'all men must dance'", "None of these"]
var GOTanswers14: [String] = ["Sand", "Water", "Dragon's blood", "Sunlight"]
var GOTanswers15: [String] = ["Valyrian Steel", "Weirwood", "None of the above", "Snowballs"]
var GOTanswers16: [String] = ["Six times", "Three times", "Five times", "Seven times"]
var GOTanswers17: [String] = ["Lady", "Ghost", "Nymeria", "Summer"]
var GOTanswers18: [String] = ["Blindness", "Memory loss", "Death", "Uncontrollable laughter"]
var GOTanswers19: [String] = ["King Joffrey", "Robb Stark", "Tywin Lannister", "Renly Baratheon"]
var GOTanswers20: [String] = ["Ser Pounce", "Battle Pus", "Little Lion", "Prince Fuzzy"]
var GOTanswers21: [String] = ["Ice", "Oathkeeper", "Widow's Wail", "Northguard"]
var GOTanswers22: [String] = ["Bronn", "Jaime lannister", "Tyrion Lannister", "Renly Baratheon"]
var GOTanswers23: [String] = ["Knowledge of poisons", "Pride in drawing blood first", "Nighttime attacks", "Ruby-colored armor"]
var GOTanswers24: [String] = ["Lemon cakes", "Apple cranberry crisp", "Strawberry rhubarb pie", "Honey cakes"]
var GOTanswers25: [String] = ["Wights", "Walkers", "Zombie", "Claws"]

//all the correct answers for each question
var correctAnswers: [String] = ["Aegon Targaryen", "11 and 13", "Children of Forest", "Wylis", "Harry Strickland", "Rhaegal", "Tycho Nestoris", "4", "Wildfire", "Hear me roar", "In a funeral pyre", "San Diego", "Valer Dohaeris or 'all men must serve'", "Sand", "Valyrian Steel", "Six times", "Lady", "Blindness", "King Joffrey", "Ser Pounce", "Ice", "Bronn", "Knowledge of poisons", "Lemon cakes", "Wights", "Paris, France", "Saskatchewan", "Asia", "Tigris", "Canada", "McMurdo, Antartica", "Sudan", "Damascus", "Canada", "Australia", "Brazil", "Mount Everest", "Canberra", "Krimml", "Mariana Trench", "Texas", "Alaska", "Pacific", "Hulunbuir", "Seine", "54", "Wyoming", "Ontario", "Mackenzie", "Vatican City", "7", "Flick", "Catcher", "64", "48", "Super Bowl", "Asphalt hockey", "Manchester United", "1994", "Fullback", "Soccer", "Boston Red Sox", "23", "1896", "Eldrick Woods", "Golf ball", "Korea", "6", "7 goals", "1967", "Joe Carter", "Football", "Real Madrid", "16", "Yes", "France", "Berlin", "Bethlehem", "Shakespeare", "1912", "George", "Little Boy and Fat Man", "Incas", "Britannia", "George Washington", "Aphrodite", "Cats", "1945", "Kronos", "In prison", "Martin Luther King, Jr", "Richard Nixon", "2001", "Great Britain, USA and Russia", "Darwinism", "July 4th, 1776", "Hitler", "North and South Vietnam", "King William", "116", "Reflex", "Value of 1", "Rhombus", "10^9", "20", "Tangent", "Bit", "12/48", "(1, -5), Up", "31√3", "0", "All of these", "1/√2", "2π", "sin^2x", "(min+max)/2", "Increases or decreases by a common multiple", "1/8", "(x-h)^2 + (y-k)^2 = 25", "7", "Revenue - Cost", "$20", "50", "6", "C6H12O6 + 6O2 -> 6CO2 + 6H2O + ATP", "Venus", "Emulsify fats", "Caves", "Plutonium", "Mercury", "Wavelength of light", "Retina", "The foot", "Giraffe", "Touch", "Vitamin C", "Canis Majoris", "Amino acids", "Red", "He formulated the heliocentric model", "Teeth", "6.02 x 10^23", "Acid and a base", "Chewing", "4", "Refraction", "Iron and nickel", "Mutations in the genetic code", "Nitrogen"]

