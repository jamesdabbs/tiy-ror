* Get Ruby koans running. Do as many as you can / need to.
* Watch this video on pry and follow along - http://vimeo.com/26391171
* Share any beginner resources that you've used and found helpful on Basecamp

1. Update your bash prompt (using `export PS1=...`) to at least include
   the present working directory (\d). See [mine](https://github.com/jamesdabbs/tiy-ror/blob/master/dotfiles/.bash_profile#L22)
   for a reference.
   * Bonus - go nuts. Some ideas: include a timestamp, display a red x if the
     last command failed, include the number of files in the current
     directory, show what git branch you're on.

2.
  * Write a method `grade` that takes in a numerical grade 1-100 and
     prints out the letter version of it.
  * Write a function that produces an array of random scores:
     `students(5) = [88, 93, 91, 73, 97]`
  * Compute the grades for a class of 25 students. Write a function to
    determine how many A's there were.

3. Write a number guessing game
  * The computer should pick a random number
  * The player guesses, and the computer says if the guess is high or low
  * Play proceeds until the player gets the number or runs out of guesses
  Bonus: reverse the game (so the player chooses and the computer guesses). What's
    the best strategy for the computer? Can you define others?

4. Write a shopping cart class that stores any number of items
   * Users should be able to add and remove items from the cart
   * The cart should be able to compute the total checkout price, after applying tax
   * Shoppers get a 10% discout if they spend more than $100 (before tax)

5. Design a hangman game.
  * Write out everything that the game should do
  * Bonus - (start to) code it up
