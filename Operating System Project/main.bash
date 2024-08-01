#==============================================================
#                                                         Final Code
#==============================================================

#!/usr/bin/bash

echo
echo
echo -e "      \033[0;35m |==================================================================|"
echo
echo -e "      \033[0;32m |****** Rock,Paper,Scissors Game ********|"
echo
sleep 1s;
echo -e "      \033[0;33m |****** Using Shell Scripting *********|"
echo
sleep 1s;
echo -e "      \033[0;36m |****** Created By : Umair Munir ********|"
echo
echo -e "      \033[0;35m |==================================================================|"
sleep 1s;
echo 
echo

#Rules of the Game
Rules()
{
   echo -e "\033[0;31m ----------------------------------"
   echo -e "\033[0;36m ** Rules ** "
   sleep 1s;
   echo
   echo -e "\033[0;32mRock Vs Scissors -> Rock"
   echo "Rock Vs Paper -> Paper"
   echo "Paper Vs Scissor -> Scissors"
   echo -e "\033[0;33mPaper Vs Rock -> Paper"
   echo "Scissors Vs Rock -> Rock"
   echo "Scissors Vs Paper -> Scissors"
   echo -e "\033[0;31m ----------------------------------"
}
Rules


#Displaying Menu

Menu()
{
echo
echo
echo -e "\033[00m------------------------------"
echo "             Main Menu"
sleep 1s;
echo
echo "1. Play One VS One"
echo "2. Play with CPU"
echo "3. Exit the Game!"
echo "------------------------------"
echo 
echo "Enter your option : "
read op
echo
}
Menu

#Loop for 5 Rounds of Game
i=1          #Counter variable
Player1_Score=0
Player2_Score=0
Rd=0      # Rounds Drawn
num2=1 

#when op==2
Your_score=0
Com_score=0
Rd1=0

#When op == 1  (One VS One)
while [ $i -le 5 ]
  do 
   if [ $op -eq 1 ]
    then

#Getting Input From Player 1
Input_player1()
{
   echo -e "\033[00m Player1,Please Enter your guess(1.Rock 2.Paper 3.Scissors) : "
   read p1
}
Input_player1

#Check choice of player1 valid or not
ch_player1()
{
   RE='^[1-3]$'
   while ! [[ $p1 =~ $RE ]]; do
     echo "Invalid Input Entered!"
     echo
     Input_player1
  done

}
ch_player1 

#Getting Input From Player 2
Input_player2()
{
   echo "Player2,Please Enter your guess(1.Rock 2.Paper 3.Scissors) : "
   read p2
}
Input_player2

#Check choice of player2 valid or not
ch_player2()
{
   RE='^[1-3]$'
   while ! [[ $p2 =~ $RE ]]; do
     echo "Invalid Input Entered!"
     echo
     Input_player2
  done

}
ch_player2

#Convert int to string
convert()
{
   [ "$1" == "1" ] && echo "Rock"
   [ "$1" == "2" ] && echo "Paper"
   [ "$1" == "3" ] && echo "Scissors"

}
PLAYER1="$(convert $p1)"
PLAYER2="$(convert $p2)"
echo
echo "Player1 choose : ${PLAYER1}"
echo "Player2 choose : ${PLAYER2}"

#Comparing guesses to show result
Compare_Guesses()
{
if [[ $PLAYER1 == $PLAYER2 ]];
then 
    echo -e "\033[0;33m Match Drawn!"
    Rd=$(($Rd + $num2))     
    echo

elif [[ $PLAYER1 == "Rock" && $PLAYER2 == "Scissors" ]];
then
    echo -e "\033[0;33m Player1 Wins!"
    Player1_Score=$(($Player1_Score + $num2))
    echo

elif [[ $PLAYER1 == "Rock" && $PLAYER2 == "Paper" ]];
then
    echo -e "\033[0;33m Player2 Wins!"
    Player2_Score=$(($Player2_Score + $num2))
    echo

elif [[ $PLAYER1 == "Paper" && $PLAYER2 == "Scissors" ]];
then
    echo -e "\033[0;33m Player2 Wins!"
    Player2_Score=$(($Player2_Score + $num2))
    echo

elif [[ $PLAYER1 == "Paper" && $PLAYER2 == "Rock" ]];
then
    echo -e "\033[0;33m Player1 Wins!"
    Player1_Score=$(($Player1_Score + $num2))
    echo

elif [[ $PLAYER1 == "Scissors" && $PLAYER2 == "Rock" ]];
then
    echo -e "\033[0;33m Player2 Wins!"
    Player2_Score=$(($Player2_Score + $num2))
    echo

elif [[ $PLAYER1 == "Scissors" && $PLAYER2 == "Paper" ]];
then
    echo -e "\033[0;33m Player1 Wins!"
    Player1_Score=$(($Player1_Score + $num2))
    echo

else
echo -e "\033[0;33m Error.Please Try Again later!"

fi
}
Compare_Guesses

#Displaying Final Score Result 

Final()
{
echo -e "\033[0;31m ====================================="
echo 
   if [[ $Player1_Score -gt $Player2_Score ]];
then 
   echo -e "\033[0;33m Player1 Scores : "
   echo $Player1_Score
   echo
   echo -e "\033[0;33m Player2 Scores : "
   echo $Player2_Score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd
   echo
   echo -e "\033[0;32m Player1 WON the Game!"
   echo
   elif [[ $Player1_Score -lt $Player2_Score ]];
then
   echo -e "\033[0;33m Player1 Scores : "
   echo $Player1_Score
   echo
   echo -e "\033[0;33m Player2 Scores : "
   echo $Player2_Score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd
   echo
   echo -e "\033[0;32m Player2 WON the Game!"
else
   echo -e "\033[0;33m Player1 Scores : "
   echo $Player1_Score
   echo
   echo -e "\033[0;33m Player2 Scores : "
   echo $Player2_Score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd
   echo
   echo -e "\033[0;32m Game Drawn!"

fi
echo -e "\033[0;31m ====================================="
}



#========================================= When op==2 =============================================================

   elif [ $op -eq 2 ]
then
#Getting Input From Player 
Input_player()
{
   echo -e "\033[00m Please Enter your guess(1.Rock 2.Paper 3.Scissors) : "
   read y
}

#Check choice of player valid or not
ch_player()
{
   RE1='^[1-3]$'
   while ! [[ $y =~ $RE1 ]]; do
     echo "Invalid Input Entered!"
     echo
     Input_player
   done

}

#Convert int to string
convert1()
{
   [ "$1" == "1" ] && echo "Rock"
   [ "$1" == "2" ] && echo "Paper"
   [ "$1" == "3" ] && echo "Scissors"

}

Input_player
ch_player
#Computer choice
Com_ch=$(($RANDOM % 3 + 1))

echo

YOU="$(convert1 $y)"
COM="$(convert1 $Com_ch)"
echo "You choose : ${YOU}"
echo "Computer choose : ${COM}"

#Comparing guesses to show result
Compare_Guesses1()
{
if [[ $YOU == $COM ]];
then 
    echo -e "\033[0;33m Match Drawn!"
    Rd1=$(($Rd1 + $num2))     
    echo

elif [[ $YOU == "Rock" && $COM == "Scissors" ]];
then
    echo -e "\033[0;33m You Wins!"
    Your_score=$(($Your_score + $num2))
    echo

elif [[ $YOU == "Rock" && $COM == "Paper" ]];
then
    echo -e "\033[0;33m Computer Wins!"
    Com_score=$(($Com_score + $num2))
    echo

elif [[ $YOU == "Paper" && $COM == "Scissors" ]];
then
    echo -e "\033[0;33m Computer Wins!"
    Com_score=$(($Com_score + $num2))
    echo

elif [[ $YOU == "Paper" && $COM == "Rock" ]];
then
    echo -e "\033[0;33m You Wins!"
    Your_score=$(($Your_score + $num2))
    echo

elif [[ $YOU == "Scissors" && $COM == "Rock" ]];
then
    echo -e "\033[0;33m Computer Wins!"
    Com_score=$(($Com_score + $num2))
    echo

elif [[ $YOU == "Scissors" && $COM == "Paper" ]];
then
    echo -e "\033[0;33m You Wins!"
    Your_score=$(($Your_score + $num2))
    echo

else
echo -e "\033[0;33m Error.Please Try Again later!"

fi
}
Compare_Guesses1

#Displaying Final Score Result 

Final1()
{
echo -e "\033[0;31m ====================================="
echo 
   if [[ $Your_score -gt $Com_score ]];
then 
   echo -e "\033[0;33m Your Scores : "
   echo $Your_score
   echo
   echo -e "\033[0;33m Computer Scores : "
   echo $Com_score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd1
   echo
   echo -e "\033[0;32m You WON the Game!"
   echo
   elif [[ $Your_score -lt $Com_score ]];
then
   echo -e "\033[0;33m Your Scores : "
   echo $Your_score
   echo
   echo -e "\033[0;33m Computer Scores : "
   echo $Com_score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd1
   echo
   echo -e "\033[0;32m Computer WON the Game!"
else
   echo -e "\033[0;33m Your Scores : "
   echo $Your_score
   echo
   echo -e "\033[0;33m Computer Scores : "
   echo $Com_score
   echo
   echo -e "\033[0;33m Total Rounds Drawn : "
   echo $Rd1
   echo
   echo -e "\033[0;32m Game Drawn!"

fi
echo -e "\033[0;31m ====================================="
}
   elif [ $op == 3 ]
then 
echo "Game is Exit.Thanks for Playing! "
exit
   else
echo "Invalid Input Entered!"
Menu

fi

  (( i++ ))
done

Final
Final1
