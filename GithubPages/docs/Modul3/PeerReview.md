# Peer review
Det danske ord for peer er *fagfælle*, altså en person der er på samme faglige niveau som en selv. Studerende på 2. semester datamatikker er hinandens fagfæller. Vi har dog i denne opgave skærpet det yderligere, så man skal være inden for samme farve.

Det er vigtig at kunne give og modtage feedback, og dette er en øvelse i dette. 

> Sidekommentar: Undersøgelser inden for pædagogik og peer feedback siger at man lærer mere af at give feedback end af at modtage den. Så læs de to andres programmer grundigt og se om de har nogle smarte ting som du kunne lære noget af.

## Praktisk
I vil på peer review dagen arbejde i grupper på 3 personer. Hver person kommer til at læse koden for to andre systemer. I vil blive delt ind i disse 3 mandsgrupper af Kasper, sådan at I ikke kommer til at læse koden for dem I arbejdede sammen med i modul 2. 

<table><tr><th>
Det er meningen at du har læst de andres kode før du møder op
</th></tr></table>


## Sådan reviewer du en andens kode
Nedenfor er der en række kriterier du skal undersøge for de to systemer du skal reviewe.

For hvert at de to systemer skal du gå de forskellige kriterier igennem, og notere (fil og linje nummer/numre) hvor du synes der er et problem. De to noter skal afleveres til den der har skrevet koden i forbindelse med den mundtlige feedback.

## Den mundtlige feedback
I er sat til at reviewe kode i grupper af tre. Der er afsat 30 min pr person til at modtage feedback fra de to andre. 

Det er en god ide at prioritere hvilke kriterier du særligt vil bringe på banen da tiden kan blive presset.

## Det skal du undersøge

Du skal downloade/klone koden, og checke at den kan clean-builde. Du skal prøve at se om det kører, men ikke bruge tid på at forbinde til en anden databse hvis programmet ikke virker.

Under review skal du checke (ved at læse koden).
Når du finder noget du synes er sært, så skal du notere det (husk at notere fil og evt. linje nummer).

### Grøn

1. Det færdige system skal være struktureret 3 lags modellen - præsentationslag, forretningslag og datalag. 
2.  Det forventes at der er en facade mellem præsentations og forretningslag og evt. mellem forretningslaget og datamappers/DAO. Det betyder blandt andet at der ikke må kaldes mappers direkte fra Servlets.
3. Det forventes at der IKKE kaldes forretningslogik (eller datamappers) fra JSP siderne.
4. Det forventes at session og requests attributter anvendes korrekt.
5. Vi vil anse det for en fejl hvis der bruges redirect hvor der burde bruges forward.
6. Det forventes at styklisterne ikke gemmes i databasen, men beregnes i forretningslaget.
7. Du skal håndtere exceptions i data laget - ikke blot catch og så skrive stack trace ud på System.out

### Gul
8. Du skal lave en specialiseret exception som du kaster fra datalaget og fanger i servlet.
9. JSP siderne må kun hente information via request og servlet

### Rød
10. Det forventes at du bruger en front-controller som vist i ugens oplæg.
