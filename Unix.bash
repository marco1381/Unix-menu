#!/bin/bash
# Display menu choices
while true; do
  clear
  echo "Menu:"
  echo "1. Manual command"
  echo "2. Word count"
  echo "3. Calculation"
  echo "4. Calendar"
  echo "5. Exit"
# Read the choice
  echo "Enter your choice: "
  read choice
# Multiple choices
  case $choice in
  1)
# Read the command
    echo "Enter a command: "
    read command
# Display manual of selected command
    man $command
# Save the file with name from user choice
    echo "Choose the name of the file to save:"
    read filechoice
    man $command >>$filechoice
    echo "File saved"
# Press enter to go back to menu
    echo "Enter to continue.."
    read
    ;;
  2)
# Choose the file
    echo "Enter the name of the file"
    read file
# Count word in the file
    wc $file
# Press enter to go back to menu
    echo "Enter to continue.."
    read
    ;;
  3)
    echo "Enter a value: "
    read x
    echo "Enter a value: "
    read y
    echo "Chosse the operarion:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
# Read the choice
    echo "Enter your choice"
    read choice2
# Calculate the sum
    case $choice2 in
    1) ((sum = $x + $y)) ;;
    2) ((sum = $x - $y)) ;;
    3) ((sum = $x * $y)) ;;
    4) ((sum = $x / $y)) ;;
    *) echo "Incorrect" ;;
    esac

    echo "The result is:" $sum
# Press enter to go back to menu
    echo "Enter to continue.."
    read
    ;;
  4)
# Read the year from the user choice
    echo "Enter a year: "
    read year
# Display the year
    cal $year
# Read the file name
    echo "Choose the name for the file:"
    read file2
# Store the content to the file named 
    cal $year >$file2
    echo "File saved"
# Sort contenent of file2 and store in file3 normally or reverse
    echo "Choose how to sort the calendar:"
    echo "1. Normal"
    echo "2. Reverse"
# Read the choice
    read choice
    case $choice in
    1) cat $file2 >file3 ;;
    2) tac $file2 >file3 ;;
    *) echo "Incorret" ;;
    esac
# Move file3 to file2
    mv file3 $file2
# Display file2
    cat $file2
# Press enter to go back to menu
    echo "Enter to continue"
    read
    ;;
  5)
# To exit the menu
    echo "Exit"
    exit 0
    ;;
  *)
    echo "Incorrect"
# Press enter to go back to menu
    echo "Enter to continue"
    read
    ;;
  esac

done
