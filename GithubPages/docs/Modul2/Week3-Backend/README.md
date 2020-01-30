# Webprogrammering backend.

### Backend betyder det der foregår på Linux serveren 

HTML sider bliver genereret på Tomcat webserveren dynamisk. Dette bliver gjort ved at data fra databasen bliver hentet op og bliver indlejret i HTML baseret på det HTTP request der er kommet fra brugeren.

HTML bliver herefter sendt via internettet til brugerens browser. Browseren indlæser html siden og renderer et visuelt billede til brugeren (Det vi kalder en webside/web page).

![](img/jspcycle.jpg)  
<hr/>

![alt text](img/clientServer.png "client server image")

### Ugeplan:  

| Dag     | Emne                                     |
| ------- | ---------------------------------------- |
| Mandag  | Klasseundervisning kl. 09.30                      |
| Tirsdag | Online møde kl. 14.00 - 15.00     |
| Onsdag  | Arbejd videre med Øvelser     |
| Torsdag | Klasseundervisning kl. 09.30  |

### Oversigt over resourcer:  

| Emne                                     | Ressourcer |
| ------ | ------ |                             
| 1. JDBC og data mappers                  | [Eksempel her](https://github.com/HartmannDemoCode/Sem2/tree/master/DataMapper/src/main/java/data) |
| 2. HTTP: post and get requests, response, session cookie | [HTTP tutorial in 7 pages](http://www.tutorialspoint.com/http/): Læs fra overview til status codes |
| 3. Java Servlets: doPost, doGet, forward vs. sendRedirect, session object. Page Controller vs. Front Controller | [Http request](https://www.tutorialspoint.com/servlets/servlets-client-request.htm), [Http response](https://www.tutorialspoint.com/servlets/servlets-server-response.htm) [POST and GET](https://www.tutorialspoint.com/servlets/servlets-form-data.htm), [session](https://www.tutorialspoint.com/servlets/servlets-session-tracking.htm), [Front Control med servlet](https://github.com/HartmannDemoCode/Sem2/blob/master/ServletDemo/src/java/control/PageControl.java) |
| 4. MVC pattern                           | Model, View, Control: [Kort beskrivelse her](https://www.codecademy.com/articles/mvc) |
| 5. SQL exceptions                        | [Overview](https://www.tutorialspoint.com/jdbc/jdbc-exceptions.htm) |
| 6. 3-lags arkitektur                     | Domæne lag: Entitets klasser og foretningslogik |
| 7.  Git og github                        | gitignore, add, commit, push, pull, clone |
| 8. Java collections -> HTML views        | See [Eksempel her](https://github.com/HartmannDemoCode/Sem2/blob/master/ServletDemo/src/java/control/Collection2Html.java) |
| 9.  SQL injection                        | [Se eksempel her](https://www.journaldev.com/2489/jdbc-statement-vs-preparedstatement-sql-injection-example) |
| 10. Cross site scripting                 | [Forklaring her](https://stackoverflow.com/questions/2658922/xss-prevention-in-jsp-servlet-web-application), [Demo project here](https://github.com/HartmannDemoCode/Sem2/tree/master/crossSideScripting) |

### Resultatet

Efter denne uge har i været igennem følgende:

1. I har lavet webapplikationer, der kan tage imod input og føre det ned i databasen. Ligeledes hente data fra databasen, så det kan vises i frontend.
2. I har stiftet bekentskab med MVC pattern
3. I har lært forskellen på page controller og front controller

#### Læringsmål

Efter denne uge er det meningen at du kan:

- Lave en java web application med MySql database
- Bruge MVC mønsteret til at lave webapplikation
- Kende til HTTP request og response samt bruge sessions

#### Erhvervskompetencer

Når ugen er omme har du opnået følgende kompetencer:

- Kende til MVC og kunne implementere dette design mønster i en webapplikation
- Kunne bruge sessions til at opretholde 'state' i en webapplikation
- Kunne bruge JDBC og data mappers til at persistere data i en webapplikation.

## Mandag

1. Præsentation af Java Webstack
2. Installation af Tomcat på localhost og Digital Ocean
3. Opbygning af simpelt website (servlet og jsp-side)
4. Deployment på localhost og Digital Ocean


### Gode links
- [Maven web app folderstruktur](https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html)
- [Maven servlet dependency til pom-fil](https://mvnrepository.com/artifact/javax/javaee-web-api/7.0)
- [MySql jdbc dependency til pom-fil](https://mvnrepository.com/artifact/mysql/mysql-connector-java/8.0.15)
- [Front controller vs Page controller](http://pratapreddypilaka.blogspot.com/2011/09/page-controller-vs-front-controller.html)


### IntelliJ tutorials
- [Installer Tomcat og sæt et webprojekt op i IntelliJ](https://youtu.be/UynBMPbUFfc)
- [Brug af java i en jsp side (dynamisk)](https://youtu.be/cPNegYtj1eA)
- [Servlet og kommunikation mellem jsp side og servlet](https://youtu.be/KmXyE8Fiz-U)
- [Opretter User klasse og sender brugerinfo ud til en jsp modtagerside](https://youtu.be/YOhe_-DeQgI)
- [Opsamling og brug af session objektet](https://youtu.be/P0VtAoYGjxM)


## Torsdag   
### IntelliJ tutorials
- [Toga webshop med database](https://youtu.be/5wKs0zuPg3s)


## Fredag  





