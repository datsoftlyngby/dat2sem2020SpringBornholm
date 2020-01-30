# Tests


Tests laves løbende gennem projektet på flere niveau'er

![](vmodel.png)   

### Unit testing
Der laves unit tests for alle "udregninger" i systemet. Disse tests kan enten laves som black-box eller white-box og der laves både positive og negative tests. Mere om det senere. Unit tests skrives og afvikles umiddelbart efter koden er skrvet. Med mindre, selvfølgelig, man laver Test Driven Development hvor testen skrives først.
Hver enkelt unit test laves i tre faser.
> #### Arrange:
> Her gøres klar til at kalde den metode der ønskes testet. Dvs. der oprettes objekter og afhængigheder.
> #### Act
> Metoden kaldes og vi får udregnet det faktiske resultat.
> #### Assert
> Nu bekræftes (eller afkræftes) at det forventede resultat og det faktiske resultat stemmer overens.

### Integrations tests
Integrations tests undersøger om forskellige moduler / lag kan arbejde sammen. Disse tests laves typisk som black-box.

### System tests
System tests er bare en stor integrations test. Der tester om alle delene virker sammen som en sammenhængende helhed.

### Acceptance test
Her blander vi kunden ind i opgaven og beder dem om at lave en acceptance test. Det er bogstavelig talt kundens accept af systemet. Normalt vil de andre tests være automatiseret, men denne er muligvis ikke.
Defineres meget tidligt i processen (på baggrund af kravene), men afvikles først til allersidst.

## Typer af tests
### Automatiseret - Manuel
Vi kan bedst lide automatiserede tests. De tager lidt længere tid at lave, men det er nemt, hurtigt og billigt at køre dem igen og igen. Efter hver ændring i koden kører vi alle tests for at bekræfte at de nye ændringer ikke har ødelagt noget.
Nogle test kan dog være vanskelige at automatisere - f.eks. bruergrænseflade tests. Der findes værktøjer, som f.eks. Selenium som kan automatisere en brugregrænsefladetest, men kompleksiteten stiger som følge heraf.
Selv manuelle tests skal formaliseres ellers tæller de ikke med, så [skriv det ned](https://www.youtube.com/watch?v=BSUMBBFjxrY)

### Black-box - White-box
Overordnet set er forskellen at med en black-box test er vi kun interesseret i resultatet, hvorimod med en white-box test er vi også interesseret i hvordan vi er kommet frem til resultatet. En white-box test tester således alle veje gennem systemet og har en meget høj "code coverage".

### Positiv - Negativ
Positive test undersøger om systemet kan give de korrekte resultater. Negative test derimod bekræfter at systemet fejler når vi (med vilje) giver det nogle uhensigtsmæssige input. Det kunne f.eks. være at vi forsøger at bruge null eller den tomme streng som brugernavn, eller prøvet at tage kvadratroden af -4.

### Code coverage
Vi vil gerne undersøge hvor stor en del af koden som er dækket af tests. Resultatet kan enten være samlet procent tal, eller vi kan gå i detaljer og undersøge hvilke kodelinier, som er testet. Sidstnævne kræver dog et værtøj (eller virkelig meget tålmodighed!).
Code coverage kunne være en måde at måle niveauet på nogle non-funktionelle krav og være stillet af kunden, men det kan også være et krav vi stiller som udviklere til kunden, så vi ikke får et ry for at skrive kode af lav kvalitet.

Se dette skriv om [JaCoCoverage](Codecoverage_in_Netbeans.md)
Bemærk at `<plugin>` tag'et i pom.xml skal placeres i 
```
<project>
    <build>
        <plugins>
            <plugin>  <-- JaCoCoverage
                ...
             </plugin>    
        </plugins>
    </build>
</project>
```





## Ressourcer
Dagens slides kan ses [her](TestSlides-RODACopy.pptx)

Her er en rigtig god artikel om at skrive test-bar kode af [Sergey Kolodyi](https://www.toptal.com/qa/how-to-write-testable-code-and-why-it-matters)

Her er lidt om at teste databaser:

 - [Unit test](databaseTest.md)

 - [Integrations test](IntegrationstestDatabase.md)



