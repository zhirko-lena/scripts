#! /bin/bash
clear

function Menu(){
 echo -e "1. Change user\n2. Change properties\n3. Show list\n0. Exit"
   read choice
   }
   
   function ChangeUser (){
       echo -e "Enter user name, group and path";
   read userName
   read group
   read pathName1
   chown $userName:$group -R $pathName1
   }
   
   function ChangeProp (){
       echo -e "Enter type of user (g, u or o), actions (+rwx or -rwx) and path";
   read userType
   read action
   read pathName2
     chmod $userType$action -R $pathName2
   
   }
   
   function ShowList (){
    echo -e "Enter path";
   read pathName3
   ls -l $pathName3
   }   
   
   exit=true

while [ $exit == true ]
do
   Menu;
   case $choice in
     1) ChangeUser; ;;
     2) ChangeProp; ;;
     3) ShowList; ;;
     0) echo "Bye!"; let exit=false ;;
     *) echo "R.T.F.M."; ;;

   esac
done
   