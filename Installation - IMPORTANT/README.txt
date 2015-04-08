***** Instructions for Wordpress Lara Jade Setup *****
*****                  Version 3.1               *****


--- General remarks ---
1. Page for managing Wordpress is "localhost/we2015/wp-admin"
2. Both username and password are "admin"
3. This README doesn't explain the installation of XAMPP or how to setup the initial Wordpress site


--- Mail server first time setup ---
1. Open xampp root folder ("C:\xampp", usually)
2. Replace the existing "sendmail.ini" in "C:\xampp\sendmail" with the file in this folder
3. Find "sendmail.exe" and set this program to be run as admin (Properties > Compatibility > Run as administrator)
4. Replace the existing "php.ini" in "C:\xampp\php" with the file in this folder
5. Restart Apache server if it was running during this process (just Start > Stop > Start in XAMPP Control Panel)
6. Now there should be a functionality to send emails from form in Contact Us page
7. Please don't use it too often or you will spam my inbox:P

--- Database transfer (IMPORTANT) ---
1. This step is important if you want to ensure that on two computers you run the same version of the site
2. Database is operated by MySQL server that runs in XAMPP and therefore isn't pushed/pulled by GitHub (doesn't exist as a file)
3. In phpmyadmin it is not possible to import into database which already has existing tables
4. Import you need to do only in the beginning, to have Exercise 3.1 version; when you are done with Exercise 3.2, please do the Export procedure

 -- Import --
 1. In this folder you will find "we2015.sql", version of the database that is final for Exercise 3.1
 2. Open "localhost/phpmyadmin" and choose database "we2015" in the left menu
 3. Select (check) all the tables and execute "Drop". This will delete all the tables you have. It might be good to do Export procedure before this
    step to be on the safe side.
 4. Now select "Import" option from the menu on the top of the website and choose "we2015.sql" from this folder

 -- Export --
 1. Open "localhost/phpmyadmin" and choose database "we2015" in the left menu
 2. Now select "Export" option from the menu on the top of the website
 3. Share with friends:)