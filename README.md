# MatchBox 🔥

MatchBox is a matchmaking (Thus the name, MatchBox) application made to calculate the compatibility between two people using different fields.

## Overview 📋

This project uses a GUI (Graphical User Interface) created with G4P to collect data for two people. It takes their names, ages, physical attributes, interests, and zodiac signs, and uses them to generate a "compatibility score." The closer the scores, the better the match!

## Features ✨

- 🖥️ **Interactive GUI:** Easy-to-use forms for entering user data.
- ♈ **Zodiac Selection:** Dedicated selector for choosing zodiac signs.
- 🛡️ **Error Catching:** Ensures all necessary fields are filled before calculating.
- 🧠 **Smart Scoring:** Points are given based on:
  - Name length
  - Age
  - Height and Weight
  - Number of interests
  - Zodiac sign
- 💬 **Compatibility Feedback:** Provides feedback on the relationship

## Requirements ⚙️

- **Processing IDE:** Download from [processing.org](https://processing.org/).
- **G4P Library:** This project requires the G4P library for the GUI.
  - Install via the Processing IDE: *Tools* -> *Manage Tools...* -> Search for "G4P".

## How to Run 🚀

1. Open `MatchBox.pde` in Processing.
2. Ensure the G4P library is installed.
3. Click the **Run** button ▶️.
4. Click **Start** on the main menu.
5. Fill in the details for Person 1 and Person 2 📝.
6. Click **Confirm** to see the compatibility ✅.

## Project Structure 📂

- **MatchBox.pde:** Main part of the application.
- **gui.pde:** Handles the GUI.
- **Person.pde:** Defines the `Person` class and the function for calculating individual scores.
- **helperFunctions.pde:** Contains other functions like (`catchErrors`), (`getValues`), and (`identifyProblems`).
