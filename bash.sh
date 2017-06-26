#!/bin/bash
echo "---- bash.sh ---> Bash console inside container"

docker exec -t -i mysql /bin/bash
