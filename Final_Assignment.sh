# Author : Zuberi Ayubu Msemo

CREATE()
{
    echo "Enter a Address Book name"
    read database

    #check availabilty, in not create a new one
    check_0=`ls | grep $database | wc -w`

    if [[ "$check_0" -gt "0" ]];
    then 
        echo
        echo "***************************************************"   
        echo " Error : Address book is already in the Database!!!"
        echo "***************************************************"
        echo
    else
        touch $database
        echo
        echo "***************************************************"
        echo " Address Book is succesfully created !!!!!"
        echo "***************************************************"
        echo
        echo

    fi
}
MODIFY()
{
    # prompt the user for address name
    echo
    echo "*******************************************************"
    echo "Enter the name of the address Book : "
    # read the address name
    read database
    echo



    # check for availability in pwd
    check_0=`ls | grep $database | wc -w`

    if [[ "$check_0" -gt "0" ]];

    then 
        echo
        echo "****************************************************"
        echo "Enter your email address"
        read email
        echo "****************************************************"
        echo


        # check if email available in the database
        check_1=`cat $database | grep $email | wc -w`

        if [[ "$check_1" -gt "0" ]];

        # enter the modified details
        then 
            echo "Enter a modified First name, Last name, Phone number"
            read first_name last_name phone
            modified=`echo $first_name $last_name $email $phone`
            former=`cat $database |grep $email`

            #Compare the details 
            echo "************************************************"
            echo "Initial Record : $former"
            echo " Final Record  : $modified"

            # global search and use sed command to modify
            sed -i '' -e s/"$former"/"$modified"/g $database

            echo "************************************************"
            echo " Your record is successfully modified!!!!"
            echo "************************************************"
            echo
        
        else
            echo " Sorry!!!, Invalid Email inserted "
            echo "***********************************"
            echo
        fi
    else
        echo " Invalid File name.."
        echo "******************************"
        echo

    fi

}
DELETE()
{
   # prompt the user for address name
    echo "Enter the name of the address Book : "
    # read the address name
    read database
    echo "************************************************"


     # check for availability in pwd
    check_0=`ls | grep $database | wc -w`

    if [[ "$check_0" -gt "0" ]];
    then 
        echo "Enter your email address"
        read email

        # check if email available in the database
        check_1=`cat $database | grep $email | wc -w`
        echo "************************************************"

        if [[ "$check_1" -gt "0" ]];
        then    
            former=`cat $database | grep $email`

            sed -i '' -e s/"$former"//g $database
            sed -i  '' -e /^$/d $database

            echo " Record is successfully deleted"
            echo "********************************"
            echo

        else
            echo " Invalid Email Inserted!!"
            echo "***************************"
            echo
        fi
    
    else 
        echo " Invalid Address book file name !!"
        echo "****************************************"
        echo
    fi

}

VIEW()
{
    echo "Enter the Address book name"
    read database

    # check for availability
    check_0=`ls | grep $database | wc -w`

    if [[ "$check_0" -gt "0" ]];
    then 
        echo "*********************************"
        echo
        echo "Details from Address selected"
        cat $database
        echo
        echo "**********************************"
        echo 
        echo
    else 
        echo " Error : Invalid Address Book name"
        echo
        echo
    fi

}


INSERT() 
{
    echo "Enter the a valid Address Book name"
    read database

    # check for availabilty 
    check_0=`ls | grep $database | wc -w`

    if [[ "$check_0" -gt "0" ]];
    then 
        echo "Enter your email Address"
        read email

        # confirms existance of email in the database
        check_1=`cat $database | grep $email | wc -w`

        if [[ "check_1" -gt "0" ]];
        then 
            echo " Error Message : Email exists in the database "

        else  
            # insert the new details 
            echo "Firstname, Last Name, mobile number"
            read first_name last_name phone
            details_to_insert=`echo $first_name $last_name $email $phone`

            # redirect to the database
            echo $details_to_insert >> $database
            echo
            echo "***********************************************"
            echo "Your records has succesfully being inserted!!!"
            echo
            echo "***********************************************"
            echo
        fi
    else

        # Display the error message
        echo "Error Message : The address Book name is Invalid!!"
        echo
        echo
    fi

}
EXIT() 

{   
    echo
    echo "************************************************"
    echo
    echo "EXITING THE PROGRAM !!!!!! "
    echo "AUTHOR : ZUBEIR AYYUB MSEMO , GITHUB : zubrah_  "
    echo
    echo "************************************************"
    exit
    echo

        
}



while [ true ]
do 
    echo
    echo
    echo "*************     ADDRESS BOOK MENU         ****************"
    echo "***           1. CREATE AN ADDRESS BOOK                 ***"
    echo "***           2. DISPLAY ADDRESS BOOK                   ***"
    echo "***           3. INSERT TO ADDRESS BOOK                 ***"
    echo "***           4. MODIFY AN ADDRESS BOOK                 ***"
    echo "***           5. DELETE RECORD FROM ADDRESS BOOK        ***"
    echo "***           6. EXIT PROGRAM                           ***"
    echo "***********************************************************"
    echo " Enter your option : "
    read option

    # cases for the  menu options
    case $option in 
        1) CREATE ;;
        2) VIEW  ;;
        3) INSERT ;;
        4) MODIFY ;;
        5) DELETE ;;
        6) EXIT PROGRAM ;;
        *) echo " Invalid option selected!!" ;;
    esac

done



