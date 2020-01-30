# Tomcat
Vejledning for upload og "visning" af HTML & CSS side

Da vi installerede Tomcat oprettet vi en mappe */opt/tomcat/*
Det er under denne mappe at Tomcat har sine filer.

Den opstarts side du ser ligger f.eks. i mappen ROOT

![opstart](./image/opstart.png)

## Gør følgende for at uploade og se en HTML fil

1. Opret mappen *minhtml* under */opt/tomcat/webapps*
2. Upload dinee HTML og CSS filer til mappen */opt/tomcat/webapps/minhtml/*
3. Hvis din HTML fil ikke hedder index.html så omdøb den til dette
4. Åben: *http://'din ip adresse':8080/minhtml/*

Du skulle nu meget gerne kunne se din HTML fil

## Filnavn - index.html
Som standard er det HTML filen *index.html* der vises når du tilgår en mappe. 

Hvis du vil se en anden HTML fil skal du skrive navnet på denne, f.eks.

*http://'din ip adresse':8080/minhtml/nyhtmlopgave.html*

*index*-filen kan godt være af en anden type end HTML f.eks. *.jsp* - index.jsp
