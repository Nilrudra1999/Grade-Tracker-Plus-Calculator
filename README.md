# Grade Tracker Plus Calculator

A personalized grade tracking system, which records individual grades and categorizes them based on school, semester, and subject. It utilizes a relational database to record the individual grades, then when asked to, it can calculate the GPA based on the existing data. Additionally, it uses a 90s retro sci-fi terminal aesthetic for its User-Interface, reminiscent of the computer terminals from the Ridley Scott Aliens franchise.

### Class Structure For The Relational DB

![image](https://github.com/user-attachments/assets/9226052e-7f95-4f85-8416-bab6ca65ab46)

## Database Install and Setup

- Ensure local device has Windows OS (v7 or higher)
- Search online for Oracle Database 21c, create a free account and download the 64-bit version
- Next use the setup.exe file to setup an instance of Oracle database locally
- Within this application's folder create a text file named "DBinfo.txt" and write the following:
- Run the windows script, found in this application's folder, named "run_setup.bat" 
- This recreates the necessary database schema used by this application