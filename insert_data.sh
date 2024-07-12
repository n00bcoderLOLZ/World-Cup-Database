#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

$PSQL "TRUNCATE games, teams;"
# Do not change code above this line. Use the PSQL variable above to query your database.

# different approach : make the team table first
$PSQL "ALTER TABLE teams DROP COLUMN team_id;"
$PSQL "ALTER TABLE teams ADD team_id SERIAL PRIMARY KEY";

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
    if [[ $YEAR != "year" ]]
    then 
        $PSQL "INSERT INTO teams(name) VALUES('$WINNER');"
        $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');"
    fi
done

# now make the game table
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $YEAR!='year' ]]
  then
    opponentNum=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    winnerNum=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    $PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES('$YEAR', '$ROUND', '$WINNER_GOALS', '$OPPONENT_GOALS', '$winnerNum', '$opponentNum')"
  fi
done