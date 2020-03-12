# Model-View-Controller
Bemærk, at dette pattern har to fortolkninger. Det er den første fortolkning af MVC, som vi anvender på 2. semester. 
<br>


# MVC som UI pattern
MVC er oprindelig et UI design pattern, som hjælper med at separere <i>forretningslogik</i>, <i>præsentationslogik</i>, og <i>navigationslogik</i>. <br>

<b>Modellen</b> er ansvarlig for at indkapsle applikationsdata, dvs. entitetsklasser som fx ```Employee``` og den tilhørende forretningslogik (fx beregning af løn). <br>

<b>Views</b> renderer et svar til brugeren med brug af data fra modellens objekter (vha. jsp, dynamiske html). <br>

<b>Controllers</b> er ansvarlige for at modtage en forespørgsel fra brugeren og kalde backend services (som fx beregning af løn eller registrering af ny medarbejder). Controlleren er typisk en servlet, der står for navigationen mellem jsp sider og almindelige Java klasser.
<br><br>

Formålet med MVC er løs kobling af komponenter med henblik på kodegenbrug, parallel udvikling og høj maintainability. Rationalet er:
- at brugergrænseflader, dvs. Views ændrer sig hyppigere end domæneviden, altså Modellen, og derfor er det godt at holde dem adskilt
- at forskellige udviklerprofiler kan arbejde med hhv. brugergrænsefladen (web designer) og selve programlogikken (programmør).
- at adskillelsen af View og Model gør det lettere at unit teste de almindelige Java klasser i Modellen, fordi der kan testes uden for en web server.
<br><br>
Hovedprincipperne er:
1.	ikke at koble ikke-UI objekter direkte til UI objekter.
2.	ikke at placere forretningslogik (f.eks. momsberegning) i UI objekter.

<br>

![](img/MVC.png)

# MVC som arkitektur pattern
MVC er senere blevet benyttet som et large-scale arkitektur-pattern, hvor <b>Model</b> repræsenterer domæne/forretningslogik-laget <b>View</b> repræsenterer præsentationslaget, og <b>Controllere</b> er workflow objekter i domænelaget.

![](img/3lag.PNG)
