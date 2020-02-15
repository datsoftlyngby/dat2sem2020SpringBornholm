# Linux, MySQL og Tomcat i skyen

[Erhvervskompentencer og Læringsmål](admin.md)

## Linux på Digital Ocean
Vi vil kigge på hvordan man opsætter en Linux server på Digital Ocean, hvordan vi håndterer flere brugere på linux og hvordan vi kan tale med serveren via et CommandLine Interface (CLI) (git bash). Vi skal senere anvende serveren til at hoste de websites vi udvikler.

### Resultatet

I skal alle oprette en server på Digital Ocean. Prisen for en Droplet på Digital Ocean er minimum `5$` pr. måned. Dette beløb forventer vi at I selv betaler (Det er trods alt en lille investering i forhold til flere af jeres medstuderende fra de andre uddannelser, der bliver bedt om at købe bøger for mange hundrede kroner, hvert semester). Grunden til at vi gerne vil have at alle opretter deres egen linux server er at:

- Vi håber at serveren sammen med jeres github konto bliver et portfolio, hvor i kan lægge alle jeres skoleprojekter, så andre kan se dem (praktikværter, jobudbydere, mor og far m.fl)
- Vi kommer til at bruge disse droplets rigtig meget på de efterfølgende semestre også.
- At I bliver fortrolige med Linux og opsætning af servermiljøer

## Introduktion: Om virtuelle maskiner og ugens plan
- [Video: Intro til modulet og materialerne](https://youtu.be/UxokCeT9WZ4) (6:01)
- [Video: Hvad er Cloud Computing?](https://youtu.be/Go0ETuLyyUc) (23:49)
- [Video: Hvad er en virtuel maskine](https://youtu.be/hUgdtbD0DRQ) (24:14)

De første `50$` til digital ocean kan du få gratis gennem [GitHub Education](https://education.github.com/students). Tilmeld dig straks og få rabat, når du lige om lidt skal oprette en Droplet.

## 1. Opsætning af Linux server og SSH
Denne første tutorial leder dig igennem installation og konfigurering af en virtuel server hos Digital Ocean (kaldes en Droplet). Efter oprettelsen skaffer vi adgang via ssh, laver en Swap-disk og tager til sidst en backup (snapshot) af maskinen.

- [Dokument: Opsætning af Droplet, Linux og SSH](https://docs.google.com/document/d/19ggC3KYmmsIR8sWHIwW_wFyJ2lrFjJH8KKVvyDUJ8gQ/edit?usp=sharing)
- [Video: Gennemgang af opsætningen med kommentarer](https://youtu.be/Spw31uwW0S0)

## 2. FileZilla
FTP klient, som vi skal bruge til at overfører filer til og fra vores Droplet.

- Download [https://filezilla-project.org](https://filezilla-project.org)
- [Video: Installation af Filezilla og forbindelse til Droplet](https://youtu.be/RNlXL4FVAeQ)


## 3. MySQL 8 installationen
Opsæt brugere og rettigheder. Opret forbindelse til MySql 8 serveren udefra (fra internettet) fra MySql Workbench.

- [Dokument: Tutorial til installation af MySql 8 Server på Linux serveren](https://docs.google.com/document/d/1NtekaiYB-oayiw3yecwE3q1j8f_fnhvV3pREbx31Z8w/edit?usp=sharing) 
- [Video: Gennemgang af installationen med kommentarer](https://youtu.be/bKwWKw9YC7A)

Kør SQL scriptet [demo.sql](./demo.sql) på MySQL serveren (Digital Ocean), direkte via MySQL kommandoprompt. Sådan: 

```bash
mysql -u root -p
source /home/<username>/demo.sql; 
```

## 4. Apache Tomcat 9
Tomcat er vores webserver (egenlig hedder den en webcontainer). Den skal også installeres og konfigureres:

- [Dokument: Tutorial til installation af Tomcat 9.0 på Linux serveren](https://docs.google.com/document/d/1mS4UL-3CUzObCds9seqtQtYR9eg0NBWKtQn_rUPmaC0/edit?usp=sharing)
- [Video: Gennemgang af installationen med kommentarer](https://youtu.be/Iktg2A6S4y8)

Til sidst i videoen skal I prøve at lægge nogle flade html/css filer på webserveren, så I kan beundre resultatet (den sidste del er kun med på videoen). Hvis du ikke selv har nogle brugbare html-filer, så kan du downloade, udpakke og bruge [disse](./BootstrapVersion.zip).

## 5. Linuxøvelser
Vi ser på Linuxøvelser og vores smækre virtuelle maskine.

- [Ekstra øvelser om bash scripting (til inspiration)](study/ex2bash.md)   

## Ressourcer til ugen

[Book: Learn Linux in 5 days](https://linuxtrainingacademy.com/wp-content/uploads/2016/08/learn-linux-in-5-days.pdf?__s=uvrsr3eotoyvr3yvh2zk): Denne bog er en generel indføring i Linux som operativ system. I kan bruge den som baggrundsreference til at slå op i eller til at læse dele af, hvis i har noget tid i overskud.  

[Cheat sheet til de meste brugte linux commands](study/linuxcommands.pdf): Dette ensides ark kan i printe ud og have liggende ved siden af jer i begyndelsen indtil i bliver fortrolige med de meste brugte commands i linux.  

#### Ekstra ressourcer (til orientering og opslag):
[Shell Scripting](http://ryanstutorials.net/linuxtutorial/scripting.php)  
[Bash on Lynda.com ](https://www.lynda.com/Bash-tutorials/Up-Running-Bash-Scripting/142989-2.html)  
[SSH on Lynda.com:](https://www.lynda.com/Developer-Network-Administration-tutorials/Welcome/189066/365610-4.html)   
[SSH video on youtube:](https://www.youtube.com/watch?v=svRWcx7dT8g)   
[Public/private key concept article](http://blakesmith.me/2010/02/08/understanding-public-key-private-key-concepts.html)  
[Digital Ocean tutorial: SSH & connecting to ubuntu](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process)   


```

```
