function prompt_take_input {
	read n_guess
	echo $n_guess
}

function check_mismatch_inform {
	n_files=$1
	n_guess=$2

	if [[ $n_guess -gt $n_files ]]; then
		echo "Your guess is too high. Please try again."		
	elif [[ condition ]]; then
		echo "Your guess is too low. Please try again."
	fi
	echo "Please guess how many files are in the current directory:"
	}


n_files=$(ls | wc -l)
echo "Please guess how many files are in the current directory:"
n_guess=$(prompt_take_input)

while [[ $n_guess -ne $n_files ]]; do
	check_mismatch_inform $n_files $n_guess
	n_guess=$(prompt_take_input)

done

echo "Congratulations. Your guess is correct."




