#! /usr/bin/env bash

FILES=$($shell ls | wc -l)

check_f(){
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
        echo 'please enter integers only' && read_f
    fi
}
read_f(){
    read GUESS
}


while true; do
echo 'how many file do you think there are in this directory'
read_f
check_f
if [[ "${FILES}" -eq "${GUESS}" ]] && [[  $GUESS =~ ^[0-9]+$ ]]; then 
    echo "[BIG BRAIN ALERT]: congratulations"
    echo 'big brain ready for another round? (yes/no)'
                read answer
                case "$answer" in
                    yes|y) ./guessinggame.sh
                        ;;
                    no|n) echo -e "ending"
                        ;;
                    *) echo -e " invalid input. terminating anyway"
                esac
                break
else
    if [[ "${GUESS}" -lt "${FILES}" ]]; then 
        echo -e "you guess is less than the ammount of files"
    else
        if [[ "${GUESS}" -gt "${FILES}" ]]; then
            echo -e 'you guess is greater than the ammount of files'

        fi
    fi
fi

done