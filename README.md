# JavaEE-project
https://hotel-reservation-java.herokuapp.com/


# Dump file Link
https://drive.google.com/drive/folders/1dx3SaD0Cj-nwLqB3kVm57gieTGRj_MM7?usp=sharing

# sql Databse Dump command
  1) Creating .sql file using dump :   mysqldump -u root -p DATABASE_NAME > D:\FILE_NAME\DATABSE_NAME.sql <br>
  2) create a new data base :   create database DATABASE_NAME; <br>
  3) Importing .sql file :   mysql -u root -p DATABASE_NAME < D:\db\DATABASE_NAME.sql

ex:
  Creating .sql file using dump :   mysqldump -u root -p university > D:\db\uni.sql
  create a new data base :   create database testing;
  Importing .sql file :   mysql -u root -p testing < D:\db\uni.sql
