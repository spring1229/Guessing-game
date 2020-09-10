echo '--GUESSING GAME--'
echo 'ENTER YOUR GUESS:'
read guess

function get_file {
         local number=$(ls -l | wc -l)-1
         echo $number
}

correct=$(get_file)

while [[$guess -ne $correct]]
do 
        if [[ $guess -gt $correct]]
        then
            echo 'The guessing number is too big!'
        else
            echo 'The guesings number is too low'
        fi 
        echo
        echo 'Try again:'
        read guess
done

echo 'Congratulations! You are correct finally!'
