#!/bin/sh

FILENAME='myFile'

# echo $FILENAME

# if[$FILENAME]:

TEST="one"
case $TEST in
one)
  echo "1"
  ;;
two)
  echo "2"
  ;;
three)
  echo "3"
  ;;
['t','e','n'])
  echo "chars"
  ;;
?e)
  echo "?)"
  ;;
*)
  echo "*)"
  ;;
esac
