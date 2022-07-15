#!/bin/bash

URL="https://ya.ru"

result=`curl -I $URL 2>/dev/null | head -n 1 | cut -d$' ' -f2`

if [[ $result -eq 200 ]]
then
  result="success"
else
  result="failure"
fi
