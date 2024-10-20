# Unix menu
# Task 4: Barb’s Shell Problems

## Shell Script Requirements

Write a shell script that fits the following requirements for Barb:

### 1. Menu of Options
- The script should present a **menu of options** (choices) to the user.
- The user should be able to **enter a number** to choose the option they want from the menu.
- After the user finishes with the chosen option, they should be returned to the menu to make another choice if they wish.
- There should be **five choices** for the user to pick from.

### 2. Choices

- **Choice 1**:  
  - Prompt the user for a command.  
  - Perform the `man` command on their input.  
  - Save the results to a file of the user's choice.
  
- **Choice 2**:  
  - Perform a word count (`wc`) on a file specified by the user.
  
- **Choice 3**:  
  - Perform a calculation on two numbers using the user's choice of arithmetic operation (`+ - × ÷`).  
  - First, take the user's number input.  
  - Then allow the user to choose which arithmetic operation they would like by entering `1, 2, 3, 4` corresponding to `+ - × ÷` (in this order).  
  - Display the output of the calculation.

- **Choice 4**:  
  - Take a **year input** from the user.  
  - Run the `cal` command for the year and save the result to a file chosen by the user.  
  - Then, give the user the choice of **sorting the contents** of this file either **normally** or in **reverse order**.  
  - Output the sorted result to the user.  
  - The choices should be:
    - **1** for normal order  
    - **2** for reverse order

- **Choice 5**:  
  - Exit the shell script.  
  - When this option is selected, the script must display `Exiting` to the user before terminating.

---

