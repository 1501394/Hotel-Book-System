# Hotel-Book-System
# Introduction
This is the project for my Java course. Its a very basic hotel reservation system based on java.swing and mysql. It has only a
few of functions (reserve rooms for customers, manage information of reservation, rooms and customers) and I have created 3
database tables for these purposes (roomdetail, bookingdiary, customerdetail). There is one extra table called "login" which
actually has nothing to do but stores a pair of demo user (Lh) and password (lh123). You can use it for the test after
installation.

# Installation
As its a basic program, there are not many things to do with installtion. You can either directly import it from git URI or 
download it first as a zip file and import it then. After that, you have to import tables to your own database through sql
files. Also, you probably need to add "jcalendar-1.4.jar" to the library manully, which solves a very common problem whem you 
first time open this project.

# Usage
You can run the project and use Lh (user) and lh123 (password) to log in.Then you 
can choose whatever function you want in navigation panel. When you choose "booking room", you need to select dates 
and rooms first. The thing is that if you erased all existed data in the database table "roomdetail" before, you should 
implement "adding new room" in the function of "room management" first, otherwise you cant implement reservation as no rooms 
are available. After selection, you have to write in customer's information and click "book" button. The system will store the
date into the tables of "customerdetail" and "bookingdiary". The other 3 management functions are quite similar. They only do
the basic CRUD operations and all of them are excuted by the event of "clicking button".
