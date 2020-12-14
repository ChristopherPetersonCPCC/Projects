Creates a Database GUI based on a database using basketball statistics.

To create the Basketball Database:

In MySQL workbench:

Create a new conection with your local database:

Network address: 127.0.0.1

User: root

Password: ics311

IMPORTANT: You must use the same username and password in order for the code to work

Then you can open and execute the attached MySQL script titled "BasketballDatabaseScript.sql" in order to create the database

To create the Graphical User Interface:

1. Create a new java project entitled "BasketballDatabase"

2. Create five java classes within that project entitled "Form1", "Form2", "Form3", "MainMenu", and "TestDriver"

3. Copy and paste the contents of each of the attached .java files lcoated in the DatabaseGUI folder into their corresponding class names that were created in step 2. E.G. Form1.java code would be copied and pasted into your Form1 class in your IDE

4. Add the attached .jar file to your build path by right clicking on your project and selecting properties->Java Build Path->Add External Jars and selecting the "mysql-connector-java-8.0.22.jar" file included in the folder

5. Right click on the "TestDriver" class and select run as-> java application. This will bring you to the main menu of the GUI

6. From the Main Menu, you can select either the "Player" button to get to Form 1, the "Team" button to get to Form 2, or the "Player Search" button to get to Form 3

In forms 1 and 2, you can use the first button to show the first row of the table, next to show the next row of the table, previous to show the previous row of the table, and last to show the last row of the table

In form 3, you must enter in a NBA team name (e.g. Timberwolves) and hit the "submit" button in order to access the drop down menu which will then allow you to choose a player on that team. When a player has been selected, the text fields will then be populated with his data.

Screenshots:

BasketballDBForm1.PNG shows the player table working
BasketballDBForm2.PNG shows team and coach tables working
BasketballDBForm3.PNG shows player search working
BasketballDBMainMenu.PNG shows the main menu working