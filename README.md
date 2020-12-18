# Address Book Programming with Shell script using Borne Shell
# Author : Zuberi Ayubu Msemo


# Instruction of Use :
* Clone the the github repo
* Navigate to Final_Assignment.sh file and run the file 
* Follow the menu based Address prompt and use the following where neccessary
for simplicity use:
 - Address name to use : TNS
  Address name will be used for all options from viewing,insertions,modifications and deletion, however can be used for testing all options
 - email addresses can be selected from : 
    Omari Kabwila isp@gmail.com 001
    Sophia Pembe  sp@gmail.com 002
    Shalaima Hussen sh@gmail.com 003
    Rehema Kiboshor rk@gmail.com 004
    Shashuamsa Abubakary sa@gmail.com 005

   All emails in here can be used for delection , modifications and insertions, however can be used to test all options.


# Pseudocode and steps i undertake to accomplish the task.
I will be using fumnction to conduct different choices and options relating to the program as it gives a more faster approach to navigate through different options available.



### MAKE_ADD_BOOK FUNCTION
In this function i will basically do :
  * Ask the user to enter the  address book name
  * Check if the adddress book name entered is in the current working directory
  * If available prompt the user and exit
  * If not create the Database 


### VIEW FUNCTION
In this function i will do the following :
  * Ask the user to enter the address book name
  * Check availability 
  * If not display error message and exit
  * If yes then Display the records found on the adddress book


### INSERT FUNCTION
Here i will be dealing with insertion of records to the database through the following steps :
  * Prompt the user to enter the name of the address book 
  * Check the availability of the address book in the Database
  * If yes, then user will enter email address, first name, last name and mobile number
  * If yes but no record, then user will be aksed to enter initial details and added to the database
  * If not, the display error mesaage and exit


### MODIFY FUNCTION
In this checklist i will be dealing with :
  * Prompt the user to enter the name of the adddres book
  * Check the availabilty of the Adddress book in the database
  * If not displauy error message and exit
  * If yes then ask the user to enter email address
  * If present modify the record using shell command
  * If not then display the error message and exit
  

### DELETE RECORD FUNCTION
In this checklist i will be dealing with :
  * Prompt the user to enter the name of the adddres book
  * Check the availabilty of the Adddress book in the database
  * If not displauy error message and exit
  * If yes then ask the user to enter email address
  * If present delete the record using shell command
  * Remove the trailing  blank space in the database
  * If not then display the error message and exit


### EXIT FUNCTION
* User selects the exit option and the system exist.

