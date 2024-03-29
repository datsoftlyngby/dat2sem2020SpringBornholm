# Database design.

[Erhvervskompentencer og Læringsmål](./admin.md)

### Oversigt over ugen:  


| Dag     | Emne                                     |
| ------- | ---------------------------------------- |
| Tirsdag  | Modellering og normalisering |
| Onsdag | Online møde |
| Torsdag | JDBC og SQL |
| Fredag  | Online møde |

### Resultatet

Efter denne uge har i været igennem følgende:

1. I har lært hvordan man designer en database med tabeller og relationer, samt datatyper på kolonnerne og "constraints" der hjælper med at sikre data integriteten.
2. I har lært hvordan man laver CRUD (Create, Read, Update og Delete) operationer på databasen for at manipulere data.
3. I vil kende til forskellen på DDL: Data Definition Language og DML: Data Manipulation Language.
4. I vil vide hvordan man man laver et E/R diagram og hvordan omsætter dette til en fysisk data model og til et sql script
5. I vil have lært en række SQL commandoer til at kunne lave komplekse udtræk af data fra en database med flere sammenkædede tabeller.


## Tirsdag: Modellering og normalisering
Læs denne artikel: - [Dansk artikel om normalisering](resources/DB_normalisering.pdf)

[Opgave i normalisering](exercises/NormaliseringEx3.md)

## Onsdag: Video-dag
Se disse to videoer om mange til mange relationer:

1. [Eksempel fra Delfinprojektet](https://www.youtube.com/watch?v=l5nn4vyn2W8)
2. [Diverse mange-til-mange eksempler](https://www.youtube.com/watch?v=fYxMZ7a-PuE)

## Torsdag
JDBC og SQL. 
- Genopfrisking af indhold fra 1. semester

### Opgaver
- Lav [Øvelse 1](exercises/biblioteket.md): Biblioteket
- Lav [Øvelse 2](exercises/SQLex1.md): Classic Models


### Oversigt over resourcer (til opslag og inspiration):  

| Emne                             | Ressourcer                               |
| -------------------------------- | ---------------------------------------- |
| 1: Relationelle databaser og SQL | [Lynda.com video kursus om MySql](https://www.lynda.com/MySQL-tutorials/SELECT-statement/139986/173303-4.html?org=cphbusiness.dk): Se kapitel 2-6 + 8, [Workbench](https://dev.mysql.com/doc/workbench/en/): Reference materiale til opslag. |
| 2: DML                           | Data Manipulation Language: CRUD operationer - [MySQL Tutorial](http://www.mysqltutorial.org/basic-mysql-tutorial.aspx): Grundig online MySql bog som i kan læse i når der er tid. |
| 3: Complex SELECT statements:    | [Inner](http://www.mysqltutorial.org/mysql-inner-join.aspx), [Left/Right join](http://www.mysqltutorial.org/mysql-left-join.aspx) - Aggregate functions:    [AVG](http://www.mysqltutorial.org/mysql-avg/), [COUNT](http://www.mysqltutorial.org/mysql-row-count/), [MIN](http://www.mysqltutorial.org/mysql-min/) , [MAX](http://www.mysqltutorial.org/mysql-max-function/), [SUM](http://www.mysqltutorial.org/mysql-sum/) - [Sub queries](http://www.mysqltutorial.org/mysql-subquery/) - Operators: AND, OR, NOT, =, <>, >=, BETWEEN, IN, LIKE with [WILDCARDS](http://www.mysqltutorial.org/mysql-like/) and [ALIAS](http://www.mysqltutorial.org/mysql-alias/) - ANY vs. ALL - [UNION](http://www.mysqltutorial.org/sql-union-mysql.aspx) |
| 4: Modelering                    | [Domain model](http://stg-tud.github.io/eise/WS11-EiSE-07-Domain_Modeling.pdf) udledt fra kravsspecifikationen [(Conceptual model)->(Logical model)-> (Physical Database model)](https://www.visual-paradigm.com/support/documents/vpuserguide/3563/3564/85378_conceptual,l.html). [Data modeling](https://dev.mysql.com/doc/workbench/en/wb-data-modeling.html) in workbench, [Reverse engineering](https://dev.mysql.com/doc/workbench/en/wb-reverse-engineer-live.html) in workbench. |
| 5: DDL                           | DDL: Data Definition Language - CREATE, DROP, ALTER: Database, Table, View, [SQL-constraints](https://www.tutorialspoint.com/sql/sql-constraints.htm): Primary key, [Foreign key]() and [MySQL Cascade](http://www.mysqltutorial.org/mysql-on-delete-cascade/), NOT NULL, Unique, [MYSQL Data types](https://www.tutorialspoint.com/mysql/mysql-data-types.htm),  auto_increment |
| 6: Indexing                      | [Indexing](http://www.tutorialspoint.com/mysql/mysql-indexes.htm) |
| 7: NF                            | [3 Normalformer](http://www.studytonight.com/dbms/database-normalization.php): 1NF, 2NF, 3NF |
| 8: JDBC                          | [JDBC](https://www.tutorialspoint.com//jdbc/jdbc-quick-guide.htm): Connection, Statement, PreparedStatement og [SQL Injection](https://www.javacodegeeks.com/2012/11/sql-injection-in-java-application.html), [ResultSet](http://tutorials.jenkov.com/jdbc/resultset.html), [Transactions](https://www.tutorialspoint.com/mysql/mysql-transactions.htm) i Mysql og [Transactions i java med JDBC](https://www.tutorialspoint.com/jdbc/jdbc-transactions.htm). |
| 9: SQL Exceptions                | [SQL Exceptions](https://www.tutorialspoint.com/jdbc/jdbc-exceptions.htm) og hvordan man opsætter og læser error [logs](http://www.pontikis.net/blog/how-and-when-to-enable-mysql-logs) (Configurationsfilen ligger på: /etc/mysql/mysql.conf.d/mysqld.cnf og logfilen på `sudo tail /var/log/mysql/mysql.log`) |
| 10: Backup                       | [Backup og Restore database.](https://www.backuphowto.info/how-backup-mysql-database-automatically-linux-users) |



