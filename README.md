# Grade Tracker Plus Calculator

A personalized grade tracking system, which records individual grades and categorizes them based on the school, semester, and subject. It utilizes a relational database to record the individual grades, then when asked to, it can calculate the GPA based on the existing data. Additionally, it uses a 90s retro sci-fi terminal aesthetic for its User-Interface, reminiscent of the computer terminals from the Ridley Scott Aliens franchise.

### Class Structure For The Relational DB

![image](https://github.com/user-attachments/assets/9226052e-7f95-4f85-8416-bab6ca65ab46)

## App Installation and Setup

- Download the zip of the app from the github repo
- Follow the Database installation and setup guides to create the required database for the app
- Note: the database required for this app is setup and managed locally on the host PC
- Make a shortcut to the .exe file on the homescreen (optional)
- The app is now setup and ready for use

## Database Installation

- Ensure the local device has Windows OS (v7 or higher)
- Search online for "Oracle Database 21c" 
- Create a free account and download the 64-bit version as a ZIP
- After unzipping, use the setup.exe file to create an instance of the database locally
- Within the Grade Tracker app's folder create a new text file named "DBinfo.txt" 
- In this file write the following with the exact format as shown in the image below
- In the area marked white, make sure to add your own password

![image](https://github.com/user-attachments/assets/220848d1-4f88-4151-bc05-7dea6ba7d82e)

## Database Setup

- Run the windows script, found in this application's folder, named "run_setup.bat" 
- This recreates the necessary database schema used by the Grade Tracker app
- Note: The schema is created under the system admin default role