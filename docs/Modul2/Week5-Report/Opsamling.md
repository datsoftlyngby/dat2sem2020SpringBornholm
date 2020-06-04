# Prøveeksamensforberedelse og opsamling

Nu er det godt tre uger siden vi begyndte at undervise jer i webprogrammering (front- og backend) i Javas verden. Vi har ikke lagt skjul på, at det er en stor omgang med en stejl indlæringskurve, og lavede derfor [videoforløb 1 og 2](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/VideoSerier.html) til at varme op på. Senere introducerede vi Kaspers command pattern skabelon i [videoforløb 4](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/Skabelonen.html) og slap jer løs på Cupcake projektet, så I kunne få lidt jord under neglene. Sidst, men ikke mindst fik I [videoforløb 3](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/Git.html) med diverse hints til brug af GIT.

Og så tog fanden ved jer. Vi har aldrig set folk arbejde så ihærdigt, ja det var nærmest som fanden var i hælene på jer. I fik kodet, fik erfaring med et nyt IDE, maven, tomcat, servlets, scopes, css, design patterns og blev præsenteret for en helt ny type applikation. Nåja, og så blev vi, for det ikke skal være løgn, også ramt af corona og skolen blev lukket.  

Nu kommer der en periode, hvor I ikke har travlt. Og den periode mener vi vil være brugt godt på lige at gennemgå nogle arkitekturmæssige overvejelser, så I kender baggrunden for den skabelon I har anvendt.  

En anden ting  vi vil bede jer om er, at bruge noget tid på git [se uge 10](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/). At lave eksamensprojektet uden brug af git er vanvittigt, og hvis vi ikke har jeres git log, så har vi ikke nogen ide om hvem der har skrevet koden. Så jeres git log fungere altså lidt som en dokumentation på at det er jer der har lavet projektet. Endelig er git pensum.
 
Vi vil også stærkt anbefale jer at lave developer brances som I så brancer ud fra. Præcis som jeg viser i [videoforløb 3](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/Git.html) fra uge 10.   Fordi vi alle er isolerede på grund coronakrisen, og vi ikke ved hvor længe det varer, vil vi skærpe denne anbefaling. Git kan både være den store varme hånd der give trøst og tryghed når man er faret vild, og git kan være den hånd der svinger kæppen over jeres rygstykker. Så tag jer i agt og få det lært ! Jeg syntes selv at Git var svært at blive helt fortrolig med. 



## Patterns

Vi har set hvordan [front controlleren](https://en.wikipedia.org/wiki/Front_controller) spiller en afgørende rolle for centraliseringen af kontrollen over afviklingen af vores web app. Al kommunikation kommer ind via den og rammer vores command, hvorfra afviklingen styres. Vi så hvordan alternativet, nemlig vores page controller, hvor kontrollen af afviklingen var decentraliseret, lynhurtigt gjorde tingene vanskeligt at overskue og lave ændringer i. Jeg var alene og applikationen var langt mere simpel end jeres cupcake, men selv her mistede jeg hurtigt overblikket. Prøv lige at forestille jer hvor vanskelig cupcake opgaven ville være med en decentral styring og med tre andre samarbejdspartnere. 

I forbindelse med præsentationen af Kaspers skabelon fik I en grundig introduktion af det pattern der hedder [command](https://en.wikipedia.org/wiki/Command_pattern). Vi så hvor stærkt det objektorienterede paradigme er, hvis det anvendes korrekt. Ting som, så snart det blev for konkret blev klodset og meget meget vanskeligt at udbygge, kunne på næsten magisk vis gøres fleksibelt uden at ansvaret blev uklart. Nærmest som om at det rummede en indre logik. Det er den indre logik vi henviser til, når vi snakker om design patterns.  Og det er netop fordi vi snakker om en indre logik, at det udefra kan være vanskeligt at se formålet. Vi kender nemlig ikke alternativet. Derfor har vi gjort noget ud af at viser jer hvor bøvlet alternativerne er.

Lad det være jer en advarsel. Hold jer til Kaspers skabelon. Brug tid på at forstå den, frem for at bruge tiden på at forsøge på at afvige fra den.          

### Singleton
Det pattern(design mønster) der hedder [singleton](https://en.wikipedia.org/wiki/Singleton_pattern) har I set i flere forbindelser. Både i de to videoforløb jeg havde forberedt til jer inden vi mødtes første gang (se videoforløb 1-2 fra [se uge 10](https://datsoftlyngby.github.io/dat2sem2020Spring/uge10/)), og vi har set hvordan mønstret anvendes i Kaspers skabelon. I videoforløbene brugte jeg en singleton til at sikre at de datastrukturer jeg benyttede mig af netop kun blev oprettet en og kun en gang. Jeg viste at hvis jeg ikke gjorde det, så forsvandt den data jeg forsøgte at gemme, fordi data strukturerne blev oprettet forfra igen og igen. 

I Kaspers skabelon bliver singleton anvendt med et andet formål, nemlig i forbindelse med [databaseadgangen](https://github.com/raakostOnCph/Projektskabelon/blob/master/src/main/java/DBAccess/Connector.java), og i forbindelse med initialiseringen af det map der rummer de forskellige klasser der implementere execute metoden [se](https://github.com/raakostOnCph/Projektskabelon/blob/master/src/main/java/PresentationLayer/Command.java). Hos Kasper handler det om effektivitet, da oprettelsen af en forbindelse til en database er tung, og initialiseringen af en map med de dertilhørende klasser også har en pris. 
	
Så vi har altså set to vidt forskellige formål med anvendelsen af det pattern.

#### [Demo singleton 1](https://www.youtube.com/watch?v=z8TLHNUGYAE)


#### [Demo singleton 2](https://www.youtube.com/watch?v=A77pQQH76jM)


Det som måske kan være lidt forvirrende ved et singleton, er starten. Hvordan ved vi om noget er initialiseret eller ej? For at forstå præcis hvad der sker bliver vi nødt til at se på de to  forskellige slags datatyper vi har til rådighed. De primitive, og dem som ikke er primitive. De primitive datatyper er int, boolean og char. Alle andre typer er ikke primitive inclusive dem vi selv laver. For dem gælder det at vi ikke står med selve værdien, men med en referencen til værdien.  


![](img/referance.png)


Spørgsmålet “ var != null “  betyder i virkeligheden; peger referencen “var”  på noget. Hvis den ikke gør, så er variablen ikke blevet initialiseret, og så rummer referencen ikke en adresse på et objekt i hukommelsen, men rummer værdien null. Null er ikke værdien 0 men intet




## Lagdelt arkitektur.

Vi er her på stedet heldigvis velsignet med andre store begavelser end Kaspers. Vi har også Anders, en fyr I vil have fornøjelsen af at møde på 4 semester. Jeg spurgte engang Anders om der ikke var en kort og klar definition på en lagdelt arkitektur. Det var lige inden et afdelingsmøde gik i gang. Fem minutter inde i mødet fik jeg følgende definition sendt pr mail; En arkitektur er lagdelt hvis afhængighederne kun går en vej. Dvs ingen cykler mellem lagene. Springes nogen lag over, er der tale om en “loose” lagdelt arkitektur, ellers er den “strict”. 

![](img/lagdelt.png)

Det må man sige var noget af en erkendelsesmæssig espresso, og noget jeg aldrig selv ville kunne nå frem til på egen hånd. Til gengæld er jeg begavet nok til at sætte pris på det. Det håber jeg også I er.


I det følgende vil jeg spinde en lille ende på Anders uhyre præcise definition. Det handler om at kaldende kun går en vej. Når de gør det, så er der ingen cykliske afhængigheder dvs.  Ingen a-> b ,  b -> c ,  c -> a. 

I tilfældet med Kaspers skabelon betyder det, at vores kald går fra PresentationLayer  ->  FunctionLayer  -> DBAccess. 


Organisering i lag giver overblik, og giver mulighed for at udskifte lag med andre, eller blot at lave gennemgribende ændringer i dem, uden at ændringerne forgrener sig til andre lag. 


### Facaden
I har garanteret undret jer over, hvad den facade skal til for. Og det skyldes sikkert at I ikke kender alternativet. En facade er et pattern der skjuler bagvedliggende detaljer.

Alternativet ville være at man kaldte DBAccess laget direkte fra  PresentationLayer dvs. 

PresentationLayer   - > DBAccess.  (ikke smart)

I vores tilfælde skjuler facaden, hvad der i virkeligheden sker under et log in, men den skulle også meget gerne skjule detaljerne ift. Køb af kager osv. Hvis I har skåret et hjørne her, og kaldt mapperne direkte fra præsentationslaget, så pyt, nu ved I hvorfor I ikke skal gøre det næste gang. Faktisk kan det gøres værre endnu. Fra jsp siden kan man via scriplets lave kald direkte til mapperne. Derfor har vi ikke brugt tid på scriptlets - det er simpelthen for farligt. Den teknologi vi leger med har jo ca. 20 år på bagen og brugen af den har udviklet sig. 

 
For at forklare hvorfor facaden er smart, så vil jeg præsentere jer for to grundlæggende principper inden for objektorienteret design, *low coupling* and *high cohesion*. Jeg oversætter dem til lav kobling og højt sammenfald. Når I har forstået dem så giver facaden sig selv.

De to Principper har på en eller anden måde noget med hinanden at gøre, og de gælder på alle niveauer gående fra  pakker, klasser, og metoder. Den bagvedliggende tanke er at koden skal være let at gennemskue, vedligeholde, udbygge og ændre. Hvis blot I tænker på det, så vil min forklaring forhåbentligt give mening. 

*Højt sammenfald* handler om at organisere sin kode i pakker, klasser og funktioner ,på en sådan måde, at ting der naturligt hører sammen også ligger sammen. Ved at organisere sin kode på den måde, opnår man, at der ikke sker kald på kryds og tværs gennem hele ens applikation. Det skulle gerne begrænse fremtidige ændringer i at forgrene uhæmmet gennem applikationen.  

*Lav kobling* handler om at ting ikke skal være for tæt knyttet. I kender jo allerede encapsulation som en af de 4 grundlæggende principper inden for objektorienteret programmering. Her handlede det om at klasserne ikke skulle kende for meget til hinandens implementation. En metode fra èn klasse skulle f.eks kun kende til metoder i andre klasser ud fra deres signaturer. Det skal ikke kende til private hjælpemetoder ind i klassen. Herved sikrer man sig at ting i en klasse kan ændres, uden at påvirke dem som kalder klassen.  Det sammen gør sig gældende, når vi taler om pakker eller om lag i en lagdelt arkitektur.  
   
Når vi taler om en lagdelt arkitektur så kan encapsulation dvs. afskærmningen klares af det pattern der hedder en facade. Hvis vi kigger på Kaspers skabelon, så kan vi faktisk udskifte vores mappermetoder med andre uden at man kan se det i præsentationslaget. 

Hvis vi f.eks vil bruge en anden database med en anden sql dialekt, eller blot vil udskifte databasen med nogle datastrukturer, så kan vi gøre det uden at den ændring forgrener sig til andre lag. Se følgende video.

#### [Demo udskift db med et map](https://www.youtube.com/watch?v=ySigFHGCiLM)


## Exceptions.
Dem som I sin tid udviklede Javas exception framework gjorde det muligt at håndtere en fejl så programmet ikke bragede ned, men det er op til os at beslutte hvad der efterfølgende så skal ske. Vi skal i det følgende se på hvordan I kan bruge Exceptions til at styre afviklingen, når noget går galt. 

Java arbejder med to forskellige typer af Exceptions. Cheked og unchecked. Cheked exceptions er fejl man kan forvente opstår, og som man derfor på forhånd bedes om at håndtere af compileren, og fejl der opstår på køretidspunktet. Cheked exceptions er man som udvikler ikke herre over dvs. de skyldes udefra kommende hændelser, mens de uncheked exceptions skyldes logiske fejl i ens kode.  

![](img/Exceptions.png)



Kasper benytter sig af checked exceptions ved at lade sin LoginSampleException extede(arve fra) Exceptions klassen. Herved giver han os et vink med en vognstang om, at vi skal kaste vores fejl og lade dem boble op ad i kalde stakken indtil de gribes i frontcontrolleren og sender os til index siden med en besked til brugeren. Det er en infrastruktur for fejlbehandling man må formåde løsningen er tænkt med, og som I bør lade jer inspirere af og fastholde. 


Den anden type fejl Javas exceptions framework kan håndtere er unchecked fejl. Disse fejl er logiske fejl i vores program. Dem kan compileren af gode grunde ikke forudsige, og her skal vi selv huske at fortælle, om vi ønsker at behandle en fejl lokalt eller sende den videre, men oftest brager programmet blot ned. Hvis man skulle tage højde for sine egne logiske fejl, så kunne man ikke lave meget andet ;).  Det kan f.eks være et forsøg på at parse en streng til en talværdi f.eks Integer.Parse(“femoghalvtreds”) eller det kan være at man løber ud over kanten på et array, eller man står med en null pointer.    


#### [Demo uncheked exceptions](https://www.youtube.com/watch?v=CcaoujH5Caw)
#### [Demo cheked exceptions](https://www.youtube.com/watch?v=bf6hG1eV-pA)




  
 

 









      



