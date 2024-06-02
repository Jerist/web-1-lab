#!/bin/bash

DIR_NAME=my_dir

FILE_NAME=test.txt

if [ -f ./${FILE_NAME} ]; then
  rm ./${FILE_NAME}
fi

touch test.txt

echo $(date) >> ./${FILE_NAME}
echo modified >> ./${FILE_NAME}

if [ ! -d ./${DIR_NAME} ]; then
    mkdir ./${DIR_NAME}
fi

mv ./${FILE_NAME} ./${DIR_NAME}