# CourseGo Original

This is the original java application (2017). This was made when I first discovered Java for a class group project with a peer and myself.

<h2>Instructions</h2>
<ul>
<li>To simply <b>use the application</b> download *"Course Go Release"*</li><br>
<li>To <b>view and edit code</b> use *"CourseGo Repo"*</li><br>
<li><b>Sql database file is stored in *"MySql Database"*</li></b>
</ul>
<br>

*Below is some extract from the Systems Requirements Document and System Design Specification Document which can provide insight into why the program was created and what job it must fulfil.*

<br>

Systems Requirements Document 
---------------------------
Introduction
---------------------------

The School’s current system was found to be very outdated and inefficient. In the interview, the client discussed the process of finding student records in the school’s database as well as the process teachers undertake while calculating grades for report cards. We were in search of ideas for a major project and thus a system request was issued to discover the issues with the traditional system.
  
Executive Summary
---------------------------

On completion of the preliminary investigation, it was decided to continue to a full system analysis, in search of solutions to the old system. The solutions expected should optimize and speed up the current workings of the traditional system. This should, once completed ease the workload of the teachers and hopefully provides parents the opportunity to be more involved in their children’s academic lives.  The school, should they adopt a new system, will have the option to purchase software which could be used to solve the current issues, or have an outsourced system built by programmers us. This proposed system, should potentially be operational for around 5-7 years.

Findings (Logical Design of existing system, existing problems)
---------------------------

In interviewing the client about the school’s current system, it was later found, the current system utilizes a basic excel database in which student information is stored. Marks are distributed in a term based report fashion which requires teachers to manually calculate totals at the end of the term; usually their busiest time due to all the assignments and tests they have to correct. It was also found that the database cannot be queried, thus making searches for vital information slow and tedious due to its manual nature. The marking system is also very exhaustive and sluggish and allows for human error when calculating under the pressure of end of term workloads. 

Input 
---------------------------

The school acquires student information which consists of basic contact information of a student such as their current address, telephone number, emergency contacts etc. This information is then entered into the excel database, where everything necessary pertaining to a student is stored. Referenced as the “Academic Records”, student marks the students’ collective marks for the term, which are also placed into this database.
As aforementioned, the school operates on a term based school year, thus at the end of every term, student totals, are calculated by the teacher manually, for each student, then entered into the system also. A teacher can have from two classes to three classes of about 25 students for which this processes must be completed. Test results, as well as homework grades that students completed must be corrected and totaled by the teacher, before they can be added to the student totals. 

Processes
---------------------------
On entering the school, parents are required to complete a registration form which asks for the student’s information.
After processing the student information and grades at the end of the school term, the school must distribute report cards to the students, for the parents to track their child's progress; to do this, the school then has to create reports and have them printed for handout.

Output
---------------------------
The teacher receives the test papers after each test and calculates the total marks for each student manually, most times these test are marked twice by teachers to ensure that the marks are correct. The test results are then sent to the head teacher to be reviewed and finally added to the database. This is a very lengthy process because of the amount of paperwork from each class and the need for the head teacher to review is also a bottleneck.

Report Cards these include the teacher's comments and assessment of students term work.

Recommendations
---------------------------

A possible solution would be a website based system that allows the user to access a database. Using sql the user can query the database to search for students, add, delete student information; and with the use of html and CSS the end user would only have to interact with the interface thus being easier to use. Hosting the website online allows users from all around the world to access its contents, and thus sql injection and DDoS-ing (when multiple systems flood the bandwidth or resources of a targeted system with the goal to crash the servers) can become major security issues.

Another possible solution would be, to migrate the current database to a more feasible alternative, such as MySql where queries are easily executed; however knowledge of Sql code would be needed to pursue such options. This fix would actually be quite small; requiring only a way to export the database to MySql, however training users in Sql language could increase costs and introduce a level of complexity to the situation. 

Considering the enormous pressure and work placed on teachers around the report period, yet another possible option would be to hire someone specifically to review corrections and/or assist the marking and calculations for the reports. There would however be a downside to this option, being the salary cost of the temporary worker to the school every year.  
The best face-value solution for such issues would be, to have custom in house software built to facilitate the needs and provide ease of use to the client and the other teachers. This solution would have all the costs up front, however it will result in a system which can be utilized by almost anyone for years to come and will not incur yearly/monthly fees which can eventually add up.

<hr>

Systems Design Specification
---------------------------

Executive Summary 
---------------------------

The new system was chosen after careful consideration of all possible solutions.  The idea to use a java application was backed by the practical, economical and usable time such an application would have. Considering the majority of the user base is not computer programming oriented, the java application will be simplistically designed, however, despite its simple design it must be able to perform complex queries and calculations. The program’s main task is to handle delicate student information and grades, thus security measures such as hierarchical user accounts, which would give different levels of access based on the user’s access level. In such a setup, there would be three account types, administrator, editor (teachers) and end users. Administrator accounts will have master control over all data entry, editing, adding, deleting students, teachers etc. Editors, the teachers, will only have access to add and delete data such as marks and comments. End users will only be allowed to view information allowed for them to see, and thus they will have the lowest level of privileges. 

System Integrity Controls:
---------------------------
Accounts with privilege hierarchy allowing only authorized users access to certain forms.

System Design (Input and Output Design)
---------------------------
Using Java Database and Java GUI  
Data entry screens and buttons with labels 
OnClick events on buttons so that upon click a calculation or query is executed



Implementation Requirements:
---------------------------
A java capable machine in which the new system can be run. Software necessary would include java to support the systems code execution, mySql for backup purposes and the new system’s Software CourseGo, which is a specialized java application.



Time and Cost estimates: 
---------------------------

Development of such a system will require approximately *five weeks* to complete the programming stage and another week to find critical bugs which could affect the system greatly and/or cause data loss which could be catastrophic. Implementation of the system should only require yet another week, which will include training to use the system and possibly handling simpler errors. The system will require only a simple installation, and thus implementation may be quite rapid. The total expected time required would then be equivalent to *seven (7) weeks*.
