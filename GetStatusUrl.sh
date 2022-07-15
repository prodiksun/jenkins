#!/bin/bash

URL="https://ya.ru"

RESULT=`curl -I $URL 2>/dev/null | head -n 1 | cut -d$' ' -f2`

if [[ $RESULT -eq 200 ]]
then
  RESULT="success"
else
  RESULT="failure"
fi

echo $RESULT >>  result.txt
