#!/bin/bash

echo "$1 $2"

FINDALL=FALSE

case $PATH in

:*)
    PATH=".:$PATH"
    ;;
*::*)
    PATH=`echo $PATH | sed -e 's/::/:.:/g'`
    ;;
*:)
    PATH="$PATH:."
    ;;
esac
command="$1"

IFS=$OLDIFS
IFS=:
set -- $PATH
IFS=$OLDIFS


case $command in
*/*)
    echo $command
    ;;


-a)
  echo "-a stuff first $1 $2"
  shift
 command="$1"
 echo "after shift $1"
 echo "$command"
  FOUND=false
  IFS=:
    for P in $PATH
                do
                  if [ ! -d "$P/$command" -a -x "$P/$command" ]
                        then
                        FOUND=true
                        echo $P/$command
                      continue
                  fi done

                  if [ "$FOUND" = false ]
                        then
                        echo "Command $command not found in your
search path"
                  fi
   ;;



*)
   FOUND=false
      for P
          do

            if [ ! -d "$P/$command" -a -x "$P/$command" ]
                  then
                  FOUND=true
                  echo $P/$command
                  break
            fi done

            if [ "$FOUND" = false ]
                  then
                  echo "Command $command not found in your search
path"
            fi
;;

esac