# Hangman Game Improvement Plan

## Information Gathered:

- Current hangman.lua has bugs: references undefined `str` variable, missing `end` for function, incomplete game loop
- User wants: An index table that displays the word with underscores for unguessed letters, and reveals correctly guessed letters in their proper positions

## Plan:

1. Fix the existing bugs in hangman.lua
2. Create a display table that shows "\_" for each unguessed letter
3. When a letter is guessed correctly, update the display to show the letter in its correct position(s)
4. Track all guessed letters to avoid duplicates
5. Implement proper game loop with win/lose conditions

## Dependent Files to be edited:

- level2/hangman.lua

## Followup steps:

- Test the game to ensure it works correctly
